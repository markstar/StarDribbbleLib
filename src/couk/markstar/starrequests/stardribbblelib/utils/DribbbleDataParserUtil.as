package couk.markstar.starrequests.stardribbblelib.utils
{
	import couk.markstar.starrequests.stardribbblelib.vo.Comment;
	import couk.markstar.starrequests.stardribbblelib.vo.Comments;
	import couk.markstar.starrequests.stardribbblelib.vo.Player;
	import couk.markstar.starrequests.stardribbblelib.vo.Players;
	import couk.markstar.starrequests.stardribbblelib.vo.Shot;
	import couk.markstar.starrequests.stardribbblelib.vo.Shots;
	
	public final class DribbbleDataParserUtil
	{
		public function parseShots( data:Object ):Shots
		{
			var shots:Shots = new Shots();
			
			shots.page = data.page;
			shots.pages = data.pages;
			shots.amountPerPage = data.per_page;
			shots.total = data.total;
			
			var i:uint;
			var length:uint = data.shots.length;
			
			for( i = 0; i < length; i++ )
			{
				shots.addShot( parseShot( data.shots[ i ] ) );
			}
			
			return shots;
		}
		
		public function parseComments( data:Object ):Comments
		{
			var comments:Comments = new Comments();
			
			comments.page = data.page;
			comments.pages = data.pages;
			comments.amountPerPage = data.per_page;
			comments.total = data.total;
			
			var i:uint;
			var length:uint = data.comments.length;
			
			for( i = 0; i < length; i++ )
			{
				comments.addComment( parseComment( data.comments[ i ] ) );
			}
			
			return comments;
		}
		
		public function parsePlayers( data:Object ):Players
		{
			var players:Players = new Players();
			
			players.page = data.page;
			players.pages = data.pages;
			players.amountPerPage = data.per_page;
			players.total = data.total;
			
			var i:uint;
			var length:uint = data.players.length;
			
			for( i = 0; i < length; i++ )
			{
				players.addPlayer( parsePlayer( data.players[ i ] ) );
			}
			
			return players;
		}
		
		public function parseShot( data:Object ):Shot
		{
			var shot:Shot = new Shot();
			
			shot.id = data.id;
			shot.title = data.title;
			shot.url = data.url;
			shot.imageURL = data.image_url;
			shot.imageTeaserURL = data.image_teaser_url;
			shot.width = data.width;
			shot.height = data.height;
			shot.viewsCount = data.views_count;
			shot.likesCount = data.likes_count;
			shot.commentsCount = data.comments_count;
			shot.reboundsCount = data.rebounds_count;
			shot.createdAt = new Date( data.created_at );
			shot.player = parsePlayer( data.player );
			
			return shot;
		}
		
		public function parseComment( data:Object ):Comment
		{
			var comment:Comment = new Comment();
			
			comment.id = data.id;
			comment.body = data.body;
			comment.likesCount = data.likes_count;
			comment.createdAt = new Date( data.created_at );
			comment.player = parsePlayer( data.player );
			
			return comment;
		}
		
		public function parsePlayer( data:Object ):Player
		{
			var player:Player = new Player();
			
			player.id = data.id;
			player.name = data.name;
			player.url = data.url;
			player.avatarURL = data.avatar_url;
			player.location = data.location;
			player.twitterScreenName = data.twitter_screen_name;
			player.draftedByPlayerID = data.drafted_by_player_id;
			player.shotsCount = data.shots_count;
			player.drafteesCount = data.draftees_count;
			player.followersCount = data.followers_count;
			player.followingCount = data.following_count;
			player.commentsCount = data.comments_count;
			player.commentsReceivedCount = data.comments_received_count;
			player.likesCount = data.likes_count;
			player.likesReceivedCount = data.likes_received_count;
			player.reboundsCount = data.rebounds_count;
			player.reboundsReceivedCount = data.rebounds_received_count;
			player.createdAt = new Date( data.created_at );
			
			return player;
		}
	}
}