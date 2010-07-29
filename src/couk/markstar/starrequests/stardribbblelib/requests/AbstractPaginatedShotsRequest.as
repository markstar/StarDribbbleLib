package couk.markstar.starrequests.stardribbblelib.requests
{
	import com.adobe.serialization.json.JSON;
	
	import couk.markstar.starrequests.stardribbblelib.utils.DribbbleDataParserUtil;
	import couk.markstar.starrequests.stardribbblelib.vo.Shots;
	
	import flash.utils.describeType;
	
	import org.osflash.signals.Signal;
	
	internal class AbstractPaginatedShotsRequest extends AbstractDribbbleRequest
	{
		public function AbstractPaginatedShotsRequest( page:uint = 1, amountPerPage:uint = 15 )
		{
			super();
			
			_params.per_page = amountPerPage > 30 ? 30 : amountPerPage;
			_params.page = page;
			
			_completedSignal = new Signal( Shots );
		}
		
		override protected function parseResponse( response:Object ):void
		{
			_completedSignal.dispatch( new DribbbleDataParserUtil().parseShots( response ) );
		}
	}
}