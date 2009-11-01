package bufmgr;

import java.util.ArrayList;
import java.util.List;

import global.GlobalConst;
import global.AbstractBufMgr;
import global.AbstractBufMgrFrameDesc;
import global.AbstractBufMgrReplacer;

import exceptions.BufferPoolExceededException;
import exceptions.InvalidFrameNumberException;
import exceptions.PagePinnedException;
import exceptions.PageUnpinnedException;

/**
 * This class should implement a Clock replacement strategy.
 */
public class MRU extends BufMgrReplacer {

	List<Integer> availableFrames = new ArrayList<Integer>();

	public MRU() {

	};

	public MRU(AbstractBufMgr b) {
		setBufferManager(b);

	};

	@Override
	public void setBufferManager(AbstractBufMgr mgrArg) {
		super.setBufferManager(mgrArg);
		for (int i = 0; i < state_bit.length; i++) {
			availableFrames.add(i);
		}
	}

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
		frameTable[frameNo].pin();
		state_bit[frameNo] = Pinned;
		removeFromAvailable(frameNo);
	};

	private void removeFromAvailable(int frameNo) {
		for (int i = 0; i < availableFrames.size(); i++) {
			if (availableFrames.get(i) == frameNo) {
				System.out.println("before remove frameno " + frameNo
						+ " size " + availableFrames.size());
				availableFrames.remove(i);
				System.out.println("after remove frameno " + frameNo + " size "
						+ availableFrames.size());
				return;
			}
		}

	}

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
					+ "IS ALREADY UNPINNED.");
		}
		int pinCount = frameTable[frameNo].unpin();
		if (pinCount == 0) {
			state_bit[frameNo] = Available;
			availableFrames.add(frameNo);
			System.out.println("after unpin, availableFrames.size "
					+ availableFrames.size());
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
		availableFrames.add(frameNo);
		System.out.println("after free, availableFrames.size "
				+ availableFrames.size());
		System.out.println("availableFrames: " + availableFrames);
	};

	/** Must pin the returned frame. */
	public int pick_victim() throws BufferPoolExceededException,
			PagePinnedException {
		if (availableFrames.size() < 1) {
			throw new BufferPoolExceededException(null,
					"MRU: BUFFER POOL EXCEED.");
		}

		int victim = availableFrames.get(availableFrames.size() - 1);
		removeFromAvailable(victim);
		try {
			pin(victim);
		} catch (InvalidFrameNumberException e) {
			throw new PagePinnedException(e, "MRU: INVALID FRAME NO");
		}
		return victim;
	};

	/** Retruns the name of the replacer algorithm. */
	public String name() {
		return "MRU";
	};

	/**
	 * Counts the unpinned frames (free frames) in the buffer pool.
	 * 
	 * @returns the total number of unpinned frames in the buffer pool.
	 */
	public int getNumUnpinnedBuffers() {
		return availableFrames.size();
	};
}
