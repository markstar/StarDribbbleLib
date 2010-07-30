package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class PopularShotsRequest extends AbstractPaginatedShotsRequest
	{
		public function PopularShotsRequest( page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "shots/popular";
		}
	}
}