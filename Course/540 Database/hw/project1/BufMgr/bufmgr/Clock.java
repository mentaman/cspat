package bufmgr;

import global.GlobalConst;
import global.AbstractBufMgr;
import global.AbstractBufMgrFrameDesc;
import global.AbstractBufMgrReplacer;
import global.SystemDefs;

import exceptions.BufferPoolExceededException;
import exceptions.InvalidFrameNumberException;
import exceptions.PagePinnedException;
import exceptions.PageUnpinnedException;

/**
 * This class should implement a Clock replacement strategy.
 */
public class Clock extends BufMgrReplacer {
	private int current = 0;

	public Clock() {

	};

	public Clock(AbstractBufMgr b) {
		setBufferManager(b);
	};

	/**
	 * Pins a candidate page in the buffer pool.
	 * 
	 * @param frameNo
	 *            frame number of the page.
	 * @throws InvalidFrameNumberException
	 *             if the frame number is less than zero or bigger than number
	 *             of buffers.
	 * @return true if successful.
	 */
	public void pin(int frameNo) throws InvalidFrameNumberException {
		if (frameNo < 0 || frameNo > mgr.getNumBuffers()) {
			throw new InvalidFrameNumberException(null,
					"Clock: INVALID_FRAMENO");
		}
		System.out.println("pinning frame " + frameNo);
		frameTable[frameNo].pin();
		state_bit[frameNo] = Pinned;
	};

	/**
	 * Unpins a page in the buffer pool.
	 * 
	 * @param frameNo
	 *            frame number of the page.
	 * @throws InvalidFrameNumberException
	 *             if the frame number is less than zero or bigger than number
	 *             of buffers.
	 * @throws PageUnpinnedException
	 *             if the page is originally unpinned.
	 * @return true if successful.
	 */
	public boolean unpin(int frameNo) throws InvalidFrameNumberException,
			PageUnpinnedException {
		if (frameNo < 0 || frameNo >= state_bit.length) {
			throw new InvalidFrameNumberException(null,
					"MRU: INVALID_FRAME_NO: " + frameNo);
		}

		if (frameTable[frameNo].getPinCount() == 0) {
			throw new PageUnpinnedException(null, "MRU: FRAME_NO " + frameNo
					+ " IS ALREADY UNPINNED.");
		}

		int pinCount = frameTable[frameNo].unpin();
		System.out.println("unpin frame " + frameNo + " and pincoung is "
				+ pinCount);
		if (pinCount == 0) {
			System.out.println("setting frame " + frameNo + " to referenced");
			state_bit[frameNo] = Referenced;
		}
		return true;
	};

	/**
	 * Frees and unpins a page in the buffer pool.
	 * 
	 * @param frameNo
	 *            frame number of the page.
	 * @throws PagePinnedException
	 *             if the page is pinned.
	 */
	public void free(int frameNo) throws PagePinnedException {
		state_bit[frameNo] = Available;
		frameTable[frameNo].reset();
	};

	/** Must pin the returned frame. */
	public int pick_victim() throws BufferPoolExceededException,
			PagePinnedException {
		if (getNumUnpinnedBuffers() == 0) {
			throw new BufferPoolExceededException(null,
					"CLOCK: BUFFER_POOL_EXCEED");
		}

		while (true) {
			if (state_bit[current] == Referenced) {
				state_bit[current] = Available;

			} else if (state_bit[current] == Available) {
				try {
					pin(current);
				} catch (InvalidFrameNumberException e) {
					throw new PagePinnedException(e, "CLOCK: INVALID_FRAME_NO");
				}
				int victim = current;
				current++;
				if (current == state_bit.length) {
					current = 0;
				}
				return victim;
			}
			current++;
			if (current == state_bit.length) {
				current = 0;
			}

		}
	};

	/** Retruns the name of the replacer algorithm. */
	public String name() {
		return "Clock";
	};

	/**
	 * Counts the unpinned frames (free frames) in the buffer pool.
	 * 
	 * @returns the total number of unpinned frames in the buffer pool.
	 */
	public int getNumUnpinnedBuffers() {
		int count = 0;
		for (int i = 0; i < super.state_bit.length; i++) {
			int bit = super.state_bit[i];
			if (bit != Pinned) {
				count++;
			}
		}
		return count;
	};
}
