package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class DebutShotsRequest extends AbstractPaginatedShotsRequest
	{
		public function DebutShotsRequest( page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "shots/debuts";
		}
	}
}