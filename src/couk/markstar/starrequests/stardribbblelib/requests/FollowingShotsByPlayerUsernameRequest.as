package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public final class FollowingShotsByPlayerUsernameRequest extends AbstractPaginatedShotsRequest
	{
		public function FollowingShotsByPlayerUsernameRequest( playerUsername:String, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerUsername + "/shots/following";
		}
	}
}