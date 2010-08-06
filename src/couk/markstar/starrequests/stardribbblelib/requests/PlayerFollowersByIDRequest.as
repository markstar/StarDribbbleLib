package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class PlayerFollowersByIDRequest extends AbstractPaginatedPlayersRequest
	{
		public function PlayerFollowersByIDRequest( playerID:uint, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerID + "/followers";
		}
	}
}