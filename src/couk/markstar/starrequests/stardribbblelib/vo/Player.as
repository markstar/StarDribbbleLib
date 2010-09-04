package couk.markstar.starrequests.stardribbblelib.vo
{
	
	public final class Player
	{
		public var id:uint;
		public var name:String;
		public var url:String;
		public var avatarURL:String;
		public var location:String;
		public var createdAt:Date;
		public var shotsCount:uint;
		public var drafteesCount:uint;
		public var followersCount:uint;
		public var followingCount:uint;
		public var twitterScreenName:String;
		public var draftedByPlayerID:uint;
		public var commentsCount:uint;
		public var commentsReceivedCount:uint;
		public var likesCount:uint;
		public var likesReceivedCount:uint;
		public var reboundsCount:uint;
		public var reboundsReceivedCount:uint;
		
		public function Player()
		{
		}
	}
}