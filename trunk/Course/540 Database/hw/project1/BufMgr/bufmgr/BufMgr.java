/*  File BufMgr,java */

package bufmgr;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;

import global.AbstractBufMgr;
import global.AbstractBufMgrFrameDesc;
import global.Convert;
import global.PageId;
import global.SystemDefs;
import diskmgr.Page;

import exceptions.BufMgrException;
import exceptions.BufferPoolExceededException;
import exceptions.DiskMgrException;
import exceptions.FileIOException;
import exceptions.HashEntryNotFoundException;
import exceptions.HashOperationException;
import exceptions.InvalidBufferException;
import exceptions.InvalidFrameNumberException;
import exceptions.InvalidPageNumberException;
import exceptions.InvalidReplacerException;
import exceptions.InvalidRunSizeException;
import exceptions.OutOfSpaceException;
import exceptions.PageNotFoundException;
import exceptions.PageNotReadException;
import exceptions.PagePinnedException;
import exceptions.PageUnpinnedException;
import exceptions.ReplacerException;

// *****************************************************

/**
 * This is a dummy buffer manager class. You will need to replace it with a
 * buffer manager that reads from and writes to disk
 * 
 * algorithm to replace the page.
 */
public class BufMgr extends AbstractBufMgr {
	// Replacement policies to be implemented
	public static final String Clock = "Clock";
	public static final String LRU = "LRU";
	public static final String MRU = "MRU";

	// Total number of buffer frames in the buffer pool. */
	private int numBuffers;

	// This buffer manager keeps all pages in memory!
	private Hashtable pageIdToPageData = new Hashtable();

	// An array of Descriptors one per frame.
	private BufMgrFrameDesc[] frameTable = new BufMgrFrameDesc[NUMBUF];

	/**
	 * Create a buffer manager object.
	 * 
	 * @param numbufs
	 *            number of buffers in the buffer pool.
	 * @param replacerArg
	 *            name of the buffer replacement policy (e.g. BufMgr.Clock).
	 * @throws InvalidReplacerException
	 */
	public BufMgr(int numbufs, String replacerArg)
			throws InvalidReplacerException {
		numBuffers = numbufs;
		for (int i = 0; i < numBuffers; i++) {
			frameTable[i] = new BufMgrFrameDesc();
			// System.out.println("frametable[" + i +"] is page " +
			// frameTable[i].getPageNo() );
		}
		setReplacer(replacerArg);
	}

	/**
	 * Default Constructor Create a buffer manager object.
	 * 
	 * @throws InvalidReplacerException
	 */
	public BufMgr() throws InvalidReplacerException {
		numBuffers = 1;
		frameTable[0] = new BufMgrFrameDesc();
		replacer = new Clock(this);
	}

	/**
	 * Check if this page is in buffer pool, otherwise find a frame for this
	 * page, read in and pin it. Also write out the old page if it's dirty
	 * before reading. If emptyPage==TRUE, then actually no read is done to
	 * bring the page in.
	 * 
	 * @param pin_pgid
	 *            page number in the minibase.
	 * @param page
	 *            the pointer poit to the page.
	 * @param emptyPage
	 *            true (empty page); false (non-empty page)
	 * 
	 * @exception ReplacerException
	 *                if there is a replacer error.
	 * @exception HashOperationException
	 *                if there is a hashtable error.
	 * @exception PageUnpinnedException
	 *                if there is a page that is already unpinned.
	 * @exception InvalidFrameNumberException
	 *                if there is an invalid frame number .
	 * @exception PageNotReadException
	 *                if a page cannot be read.
	 * @exception BufferPoolExceededException
	 *                if the buffer pool is full.
	 * @exception PagePinnedException
	 *                if a page is left pinned .
	 * @exception BufMgrException
	 *                other error occured in bufmgr layer
	 * @exception IOException
	 *                if there is other kinds of I/O error.
	 */

	public void pinPage(PageId pin_pgid, Page page, boolean emptyPage)
			throws ReplacerException, HashOperationException,
			PageUnpinnedException, InvalidFrameNumberException,
			PageNotReadException, BufferPoolExceededException,
			PagePinnedException, BufMgrException, IOException {
		// This buffer manager just keeps allocating new pages and puts them
		// the hash table. It regards each page it is passed as a parameter
		// (<code>page</code> variable) as empty, and thus doesn't take into
		// account any data stored in it.
		//
		// Extend this method to operate as it is supposed to (see the javadoc
		// description above).

		if (pageIdToPageData.containsKey(pin_pgid)) {
			page.setpage((byte[]) pageIdToPageData.get(pin_pgid));
			int frameNo = findFrameNoByPageId(pin_pgid);

			int value = Convert.getIntValue(0, page.getpage());
			System.out.println("in memory reading " + value + " of page "
					+ pin_pgid + " in frame " + frameNo);

			replacer.pin(frameNo);
			return;
		}

		byte[] data = new byte[MAX_SPACE];
		page.setpage(data);

		// Hint: Notice that this naive Buffer Manager allocates a page, but
		// does not
		// associate it with a page frame descriptor (an entry of the frameTable
		// object). Your Buffer Manager shouldn't be that naive ;) . Have in
		// mind that
		// the hashtable is simply the "storage" area of your pages, while the
		// frameTable
		// contains the frame descriptors, each associated with one loaded page,
		// which
		// stores that page's metadata (pin count, status, etc.)

		// Find a victim page to replace it with the current one.
		int frameNo = replacer.pick_victim();
		if (frameNo < 0) {
			page = null;
			throw new ReplacerException(null, "BUFMGR: REPLACER_ERROR.");
		}

		PageId oldPageId = frameTable[frameNo].getPageNo();

		if (oldPageId.getPid() != INVALID_PAGE) {
			if (frameTable[frameNo].isDirty()) {

				Page oldPage = new Page((byte[]) pageIdToPageData
						.get(oldPageId));
				int value = Convert.getIntValue(0, (byte[]) pageIdToPageData
						.get(oldPageId));
				System.out.println("=======================");
				System.out.println("writing " + value + " of page " + oldPageId
						+ " from frame " + frameNo);
				System.out.println("=======================");
				try {
					SystemDefs.JavabaseDB.write_page(oldPageId, oldPage);
				} catch (InvalidPageNumberException e) {
					throw new BufMgrException(e, "BUFMGR: INVALID_PAGE_NUMBER");
				} catch (FileIOException e) {
					throw new IOException("BUFMGR: WRITE_PAGE_IO_ERROR", e);
				}
			}

			frameTable[frameNo].setDirty(false);
			pageIdToPageData.remove(oldPageId);
		}

		// The following code excerpt reads the contents of the page with id
		// pin_pgid
		// into the object page. Use it to read the contents of a dirty page
		// to be
		// written back to disk.
		if (!emptyPage) {
			try {
				SystemDefs.JavabaseDB.read_page(pin_pgid, page);
				int value = Convert.getIntValue(0, page.getpage());
				System.out.println("=======================");
				System.out.println("reading " + value + " of page " + pin_pgid
						+ " in frame " + frameNo);
				System.out.println("=======================");

			} catch (Exception e) {
				throw new PageNotReadException(e, "BUFMGR: DB_READ_PAGE_ERROR");
			}

		}

		pageIdToPageData.put(new PageId(pin_pgid.getPid()), page.getpage());
		int value = Convert.getIntValue(0, page.getpage());
		System.out.println("adding new page " + pin_pgid.getPid()
				+ " with data: " + value + " to frame " + frameNo);

		if (pageIdToPageData.containsKey(new PageId(53))) {
			int intvalue = Convert.getIntValue(0, (byte[]) pageIdToPageData
					.get(new PageId(53)));
			System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
			System.out.println("page 53 value: " + intvalue);
			System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		}

		BufMgrFrameDesc desc = frameTable[frameNo];
		desc.setPageId(pin_pgid);
	}

	private int findFrameNoByPageId(PageId pinPgid) {
		for (int i = 0; i < numBuffers; i++) {
			BufMgrFrameDesc desc = frameTable[i];
			// System.out.println("in find: frametable[" + i +"] is page " +
			// desc.getPageNo() );
			if (desc.getPageNo().equals(pinPgid)) {
				return i;
			}
		}
		return -1;
	}

	/**
	 * To unpin a page specified by a pageId. If pincount>0, decrement it and if
	 * it becomes zero, put it in a group of replacement candidates. if
	 * pincount=0 before this call, return error.
	 * 
	 * @param globalPageId_in_a_DB
	 *            page number in the minibase.
	 * @param dirty
	 *            the dirty bit of the frame
	 * 
	 * @exception ReplacerException
	 *                if there is a replacer error.
	 * @exception PageUnpinnedException
	 *                if there is a page that is already unpinned.
	 * @exception InvalidFrameNumberException
	 *                if there is an invalid frame number .
	 * @exception HashEntryNotFoundException
	 *                if there is no entry of page in the hash table.
	 */
	public void unpinPage(PageId PageId_in_a_DB, boolean dirty)
			throws ReplacerException, PageUnpinnedException,
			HashEntryNotFoundException, InvalidFrameNumberException {
		if (!pageIdToPageData.containsKey(PageId_in_a_DB)) {
			throw new HashEntryNotFoundException(null,
					"BUFMGR: HASH_ENTRY_NOT_FOUND");
		}

		int frameNo = findFrameNoByPageId(PageId_in_a_DB);
		replacer.unpin(frameNo);
		frameTable[frameNo].setDirty(dirty);

	}

	/**
	 * Call DB object to allocate a run of new pages and find a frame in the
	 * buffer pool for the first page and pin it. If buffer is full, ask DB to
	 * deallocate all these pages and return error (null if error).
	 * 
	 * @param firstpage
	 *            the address of the first page.
	 * @param howmany
	 *            total number of allocated new pages.
	 * @return the first page id of the new pages.
	 * 
	 * @exception BufferPoolExceededException
	 *                if the buffer pool is full.
	 * @exception HashOperationException
	 *                if there is a hashtable error.
	 * @exception ReplacerException
	 *                if there is a replacer error.
	 * @exception HashEntryNotFoundException
	 *                if there is no entry of page in the hash table.
	 * @exception InvalidFrameNumberException
	 *                if there is an invalid frame number.
	 * @exception PageUnpinnedException
	 *                if there is a page that is already unpinned.
	 * @exception PagePinnedException
	 *                if a page is left pinned.
	 * @exception PageNotReadException
	 *                if a page cannot be read.
	 * @exception IOException
	 *                if there is other kinds of I/O error.
	 * @exception BufMgrException
	 *                other error occured in bufmgr layer
	 * @exception DiskMgrException
	 *                other error occured in diskmgr layer
	 */
	public PageId newPage(Page firstpage, int howmany)
			throws BufferPoolExceededException, HashOperationException,
			ReplacerException, HashEntryNotFoundException,
			InvalidFrameNumberException, PagePinnedException,
			PageUnpinnedException, PageNotReadException, BufMgrException,
			DiskMgrException, IOException {

		PageId start_page_id = new PageId();
		try {
			SystemDefs.JavabaseDB.allocate_page(start_page_id, howmany);
			System.out.println("start_page_id: " + start_page_id.getPid());
		} catch (OutOfSpaceException e) {
			throw new DiskMgrException(e, "BUFMGR: OUT_OF_SPACE");
		} catch (InvalidRunSizeException e) {

			e.printStackTrace();
		} catch (InvalidPageNumberException e) {

		} catch (FileIOException e) {
			throw new IOException(e);
		}

		try {
			pinPage(start_page_id, firstpage, false);
		} catch (BufferPoolExceededException e) {
			try {
				SystemDefs.JavabaseDB.deallocate_page(start_page_id, howmany);
			} catch (InvalidRunSizeException e1) {
				e1.printStackTrace();
			} catch (InvalidPageNumberException e1) {
				e1.printStackTrace();
			} catch (FileIOException e1) {
				e1.printStackTrace();
			}
		}

		return start_page_id;
	}

	/**
	 * User should call this method if s/he needs to delete a page. this routine
	 * will call DB to deallocate the page.
	 * 
	 * @param globalPageId
	 *            the page number in the data base.
	 * @exception InvalidBufferException
	 *                if buffer pool corrupted.
	 * @exception ReplacerException
	 *                if there is a replacer error.
	 * @exception HashOperationException
	 *                if there is a hash table error.
	 * @exception InvalidFrameNumberException
	 *                if there is an invalid frame number.
	 * @exception PageNotReadException
	 *                if a page cannot be read.
	 * @exception BufferPoolExceededException
	 *                if the buffer pool is already full.
	 * @exception PagePinnedException
	 *                if a page is left pinned.
	 * @exception PageUnpinnedException
	 *                if there is a page that is already unpinned.
	 * @exception HashEntryNotFoundException
	 *                if there is no entry of page in the hash table.
	 * @exception IOException
	 *                if there is other kinds of I/O error.
	 * @exception BufMgrException
	 *                other error occured in bufmgr layer
	 * @exception DiskMgrException
	 *                other error occured in diskmgr layer
	 */
	public void freePage(PageId globalPageId) throws InvalidBufferException,
			ReplacerException, HashOperationException,
			InvalidFrameNumberException, PageNotReadException,
			BufferPoolExceededException, PagePinnedException,
			PageUnpinnedException, HashEntryNotFoundException, BufMgrException,
			DiskMgrException, IOException {

		if (pageIdToPageData.containsKey(globalPageId)) {
			int frameNo = findFrameNoByPageId(globalPageId);
			int pinCount = frameTable[frameNo].getPinCount();
			if (pinCount > 1) {
				throw new PagePinnedException(null, "BUFMGR: FREE_PAGE "
						+ globalPageId.getPid() + " PINCOUNT " + pinCount);
			}

			pageIdToPageData.remove(globalPageId);
			replacer.free(frameNo);
			System.out.println("free page " + globalPageId + " from frame: "
					+ frameNo);
		}

		try {
			SystemDefs.JavabaseDB.deallocate_page(globalPageId);
		} catch (InvalidRunSizeException e) {
			e.printStackTrace();
		} catch (InvalidPageNumberException e) {
			e.printStackTrace();
		} catch (FileIOException e) {
			throw new IOException("BUFMGR: FREE_PAGE " + globalPageId.getPid()
					+ " FAIL", e);
		}
	}

	/**
	 * Added to flush a particular page of the buffer pool to disk
	 * 
	 * @param pageid
	 *            the page number in the database.
	 * 
	 * @exception HashOperationException
	 *                if there is a hashtable error.
	 * @exception PageUnpinnedException
	 *                if there is a page that is already unpinned.
	 * @exception PagePinnedException
	 *                if a page is left pinned.
	 * @exception PageNotFoundException
	 *                if a page is not found.
	 * @exception BufMgrException
	 *                other error occured in bufmgr layer
	 * @exception IOException
	 *                if there is other kinds of I/O error.
	 */
	public void flushPage(PageId pageid) throws HashOperationException,
			PageUnpinnedException, PagePinnedException, PageNotFoundException,
			BufMgrException, IOException {
		if (!pageIdToPageData.containsKey(pageid)) {
			throw new PageNotFoundException(null, "BUFMGR: FLUSH PAGE "
					+ pageid.getPid() + " NO FOUND!");
		}

		int frameNo = findFrameNoByPageId(pageid);
		if (frameTable[frameNo].isDirty()) {
			try {
				SystemDefs.JavabaseDB.write_page(pageid, new Page(
						(byte[]) pageIdToPageData.get(pageid)));
			} catch (InvalidPageNumberException e) {
				throw new BufMgrException(e, "BUFMGR: INVALID_PAGE "
						+ pageid.getPid());
			} catch (FileIOException e) {
				throw new IOException("BUFMGR: WRITEPAGE_IO_FAIL", e);
			}
			int pinCount = frameTable[frameNo].getPinCount();
			if (pinCount > 1) {
				throw new BufMgrException(null,
						"BUFMGR: FLUSH_PAGE_WITH_PINCOUNT: " + pinCount);
			}
		}
	}

	/**
	 * Flushes all pages of the buffer pool to disk
	 * 
	 * @exception HashOperationException
	 *                if there is a hashtable error.
	 * @exception PageUnpinnedException
	 *                if there is a page that is already unpinned.
	 * @exception PagePinnedException
	 *                if a page is left pinned.
	 * @exception PageNotFoundException
	 *                if a page is not found.
	 * @exception BufMgrException
	 *                other error occured in bufmgr layer
	 * @exception IOException
	 *                if there is other kinds of I/O error.
	 */
	public void flushAllPages() throws HashOperationException,
			PageUnpinnedException, PagePinnedException, PageNotFoundException,
			BufMgrException, IOException {
		for (Object pageid : pageIdToPageData.keySet()) {
			flushPage((PageId) pageid);
		}
	}

	/**
	 * Gets the total number of buffers.
	 * 
	 * @return total number of buffer frames.
	 */
	public int getNumBuffers() {
		return numBuffers;
	}

	/**
	 * Gets the total number of unpinned buffer frames.
	 * 
	 * @return total number of unpinned buffer frames.
	 */
	public int getNumUnpinnedBuffers() {
		return replacer.getNumUnpinnedBuffers();
	}

	/** A few routines currently need direct access to the FrameTable. */
	public AbstractBufMgrFrameDesc[] getFrameTable() {
		return this.frameTable;
	}

}