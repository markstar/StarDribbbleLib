package couk.markstar.starrequests.stardribbblelib.utils
{
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
			player.createdAt = new Date( data.created_at );
			
			return player;
		}
	}
}