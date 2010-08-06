package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class PlayerFollowingByUsernameRequest extends AbstractPaginatedPlayersRequest
	{
		public function PlayerFollowingByUsernameRequest( playerUsername:String, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerUsername + "/following";
		}
	}
}