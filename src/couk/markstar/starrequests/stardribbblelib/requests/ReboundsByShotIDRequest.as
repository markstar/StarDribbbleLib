package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class ReboundsByShotIDRequest extends AbstractPaginatedShotsRequest
	{
		public function ReboundsByShotIDRequest( shotID:uint, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "shots/" + shotID + "/rebounds";
		
		}
	}
}