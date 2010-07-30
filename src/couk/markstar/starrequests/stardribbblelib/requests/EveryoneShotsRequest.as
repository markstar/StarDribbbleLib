package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class EveryoneShotsRequest extends AbstractPaginatedShotsRequest
	{
		public function EveryoneShotsRequest( page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "shots/everyone";
		}
	}
}