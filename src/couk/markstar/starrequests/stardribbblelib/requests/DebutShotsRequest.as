package couk.markstar.starrequests.stardribbblelib.requests
{
	import com.adobe.serialization.json.JSON;
	
	import couk.markstar.starrequests.stardribbblelib.utils.DribbbleDataParserUtil;
	import couk.markstar.starrequests.stardribbblelib.vo.Shots;
	
	import flash.utils.describeType;
	
	import org.osflash.signals.Signal;
	
	public class DebutShotsRequest extends AbstractPaginatedShotsRequest
	{
		public function DebutShotsRequest( page:uint = 1, amountPerPage:uint = 15 )
		{
			super( page, amountPerPage );
			
			_service.url = "shots/debuts";
		}
	}
}