package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public final class LikedShotsByPlayerUsernameRequest extends AbstractPaginatedShotsRequest
	{
		public function LikedShotsByPlayerUsernameRequest( playerUsername:String, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerUsername + "/shots/likes";
		}
	}
}