package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public final class LikedShotsByPlayerIDRequest extends AbstractPaginatedShotsRequest
	{
		public function LikedShotsByPlayerIDRequest( playerID:uint, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerID + "/shots/likes";
		}
	}
}