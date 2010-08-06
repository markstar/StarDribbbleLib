package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public class PlayerFollowingByIDRequest extends AbstractPaginatedPlayersRequest
	{
		public function PlayerFollowingByIDRequest( playerID:uint, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerID + "/following";
		}
	}
}