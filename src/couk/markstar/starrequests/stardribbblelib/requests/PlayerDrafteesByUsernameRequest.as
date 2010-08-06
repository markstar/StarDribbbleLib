package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class PlayerDrafteesByUsernameRequest extends AbstractPaginatedPlayersRequest
	{
		public function PlayerDrafteesByUsernameRequest( playerUsername:String, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerUsername + "/draftees";
		}
	}
}