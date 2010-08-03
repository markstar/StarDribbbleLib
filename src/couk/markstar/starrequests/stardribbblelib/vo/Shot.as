package couk.markstar.starrequests.stardribbblelib.vo
{
	
	public final class Shot
	{
		public var id:uint;
		public var title:String;
		public var url:String;
		public var imageURL:String;
		public var imageTeaserURL:String;
		public var width:uint;
		public var height:uint;
		public var player:Player;
		public var createdAt:Date;
		public var viewsCount:uint;
		public var likesCount:uint;
		public var commentsCount:uint;
		public var reboundsCount:uint;
		
		public function Shot()
		{
		}
	}
}