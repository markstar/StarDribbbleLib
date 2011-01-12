package couk.markstar.starrequests.stardribbblelib.requests
{
	import couk.markstar.starrequests.stardribbblelib.utils.DribbbleDataParserUtil;
	import couk.markstar.starrequests.stardribbblelib.vo.Comments;
	
	import org.osflash.signals.Signal;
	
	internal class AbstractPaginatedCommentsRequest extends AbstractDribbbleRequest
	{
		public function AbstractPaginatedCommentsRequest( page:uint = 1, amountPerPage:uint = 15 )
		{
			super();
			
			_params.per_page = amountPerPage > 30 ? 30 : amountPerPage;
			_params.page = page;
			
			_completed = new Signal( Comments );
		}
		
		override protected function parseResponse( response:Object ):void
		{
			_completed.dispatch( new DribbbleDataParserUtil().parseComments( response ) );
		}
	}
}