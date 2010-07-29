package couk.markstar.starrequests.stardribbblelib.requests
{
	
	public final class PlayerShotsByUsernameRequest extends AbstractPaginatedShotsRequest
	{
		public function PlayerShotsByUsernameRequest( playerUsername:String, page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "players/" + playerUsername + "/shots";
		}
	}
}