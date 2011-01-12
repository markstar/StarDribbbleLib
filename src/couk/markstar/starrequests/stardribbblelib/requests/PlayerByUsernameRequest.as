package couk.markstar.starrequests.stardribbblelib.requests
{
	import couk.markstar.starrequests.stardribbblelib.utils.DribbbleDataParserUtil;
	import couk.markstar.starrequests.stardribbblelib.vo.Player;
	
	import org.osflash.signals.Signal;
	
	public final class PlayerByUsernameRequest extends AbstractDribbbleRequest
	{
		public function PlayerByUsernameRequest( playerUsername:String )
		{
			super();
			
			_service.url = "players/" + playerUsername;
			
			_completed = new Signal( Player );
		}
		
		override protected function parseResponse( response:Object ):void
		{
			_completed.dispatch( new DribbbleDataParserUtil().parsePlayer( response ) );
		}
	}
}