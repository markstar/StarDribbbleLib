package couk.markstar.starrequests.stardribbblelib.requests
{
	import couk.markstar.starrequests.stardribbblelib.utils.DribbbleDataParserUtil;
	import couk.markstar.starrequests.stardribbblelib.vo.Shot;
	
	import org.osflash.signals.Signal;
	
	public final class ShotByIDRequest extends AbstractDribbbleRequest
	{
		public function ShotByIDRequest( shotID:uint )
		{
			super();
			
			_service.url = "shots/" + shotID;
			
			_completedSignal = new Signal( Shot );
		}
		
		override protected function parseResponse( response:Object ):void
		{
			_completedSignal.dispatch( new DribbbleDataParserUtil().parseShot( response ) );
		}
	}
}