package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public final class FollowingShotsByPlayerIDRequest extends AbstractPaginatedShotsRequest
	{
		public function FollowingShotsByPlayerIDRequest( playerID:uint, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerID + "/shots/following";
		}
	}
}