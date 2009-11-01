package bufmgr;

import global.AbstractBufMgrFrameDesc;
import global.GlobalConst;
import global.PageId;

public class BufMgrFrameDesc extends global.AbstractBufMgrFrameDesc implements
		GlobalConst {
	private int pinCount;
	private PageId pageId = new PageId(INVALID_PAGE);
	private boolean isDirty;
	
	
	/**
	 * Returns the pin count of a certain frame page.
	 * 
	 * @return the pin count number.
	 */
	public int getPinCount() {
		return pinCount;
	};

	/**
	 * Increments the pin count of a certain frame page when the page is pinned.
	 * 
	 * @return the incremented pin count.
	 */
	public int pin() {
		pinCount++;
		return pinCount;
	};

	/**
	 * Decrements the pin count of a frame when the page is unpinned. If the pin
	 * count is equal to or less than zero, the pin count will be zero.
	 * 
	 * @return the decremented pin count.
	 */
	public int unpin() {
		pinCount--;
		if(pinCount <= 0){
			pinCount = 0;
		}
		
		return pinCount;
	};

	/**
	 * 
	 */
	public PageId getPageNo() {
		return pageId;
	};

	/**
	 * the dirty bit, 1 (TRUE) stands for this frame is altered, 0 (FALSE) for
	 * clean frames.
	 */
	public boolean isDirty() {
		return isDirty;
	};
	
	public void setPageId(PageId pageId){
		this.pageId = new PageId(pageId.getPid());
	}
	
	public void setDirty(boolean isDirty){
		this.isDirty = isDirty;
	}

	public void reset() {
		setDirty(false);
		setPageId(new PageId(INVALID_PAGE));
		pinCount = 0;
		
	}
}
