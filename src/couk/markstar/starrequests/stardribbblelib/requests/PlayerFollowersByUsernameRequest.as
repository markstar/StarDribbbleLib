package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class PlayerFollowersByUsernameRequest extends AbstractPaginatedPlayersRequest
	{
		public function PlayerFollowersByUsernameRequest( playerUsername:String, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerUsername + "/followers";
		}
	}
}