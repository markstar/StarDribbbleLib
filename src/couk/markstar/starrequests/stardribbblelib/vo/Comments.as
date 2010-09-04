package couk.markstar.starrequests.stardribbblelib.vo
{
	
	public final class Comments
	{
		public var page:uint;
		public var pages:uint;
		public var amountPerPage:uint;
		public var total:uint;
		
		protected var _comments:Vector.<Comment>;
		
		public function Comments()
		{
			_comments = new Vector.<Comment>();
		}
		
		public function addComment( comment:Comment ):void
		{
			_comments[ _comments.length ] = comment;
		}
		
		public function get numComments():uint
		{
			return _comments.length;
		}
		
		public function getComment( position:uint ):Comment
		{
			return position < _comments.length ? _comments[ position ] : null;
		}
		
		public function get comments():Vector.<Comment>
		{
			return _comments.concat();
		}
	}
}