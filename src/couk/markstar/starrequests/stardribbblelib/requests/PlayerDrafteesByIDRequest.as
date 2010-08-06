package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class PlayerDrafteesByIDRequest extends AbstractPaginatedPlayersRequest
	{
		public function PlayerDrafteesByIDRequest( playerID:uint, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerID + "/draftees";
		}
	}
}