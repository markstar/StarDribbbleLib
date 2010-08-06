package couk.markstar.starrequests.stardribbblelib.vo
{
	
	public final class Players
	{
		public var page:uint;
		public var pages:uint;
		public var amountPerPage:uint;
		public var total:uint;
		
		protected var _players:Vector.<Player>;
		
		public function Players()
		{
			_players = new Vector.<Player>();
		}
		
		public function addPlayer( player:Player ):void
		{
			_players[ _players.length ] = player;
		}
		
		public function get numPlayers():uint
		{
			return _players.length;
		}
		
		public function getPlayer( position:uint ):Player
		{
			return position < _players.length ? _players[ position ] : null;
		}
		
		public function get players():Vector.<Player>
		{
			return _players.concat();
		}
	}
}