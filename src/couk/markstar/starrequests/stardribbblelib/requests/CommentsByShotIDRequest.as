package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class CommentsByShotIDRequest extends AbstractPaginatedCommentsRequest
	{
		public function CommentsByShotIDRequest( shotID:uint, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "shots/" + shotID + "/comments";
		
		}
	}
}