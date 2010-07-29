package couk.markstar.starrequests.stardribbblelib.requests
{
	import com.adobe.serialization.json.JSON;
	
	import couk.markstar.starrequests.stardribbblelib.utils.DribbbleDataParserUtil;
	import couk.markstar.starrequests.stardribbblelib.vo.Shots;
	
	import flash.utils.describeType;
	
	import org.osflash.signals.Signal;
	
	public class EveryoneShotsRequest extends AbstractPaginatedShotsRequest
	{
		public function EveryoneShotsRequest( page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "shots/everyone";
		}
	}
}