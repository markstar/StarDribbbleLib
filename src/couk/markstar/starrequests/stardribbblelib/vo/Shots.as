package couk.markstar.starrequests.stardribbblelib.vo
{
	
	public final class Shots
	{
		public var page:uint;
		public var pages:uint;
		public var amountPerPage:uint;
		public var total:uint;
		
		protected var _shots:Vector.<Shot>;
		
		public function Shots()
		{
			_shots = new Vector.<Shot>();
		}
		
		public function addShot( shot:Shot ):void
		{
			_shots[ _shots.length ] = shot;
		}
		
		public function get numShots():uint
		{
			return _shots.length;
		}
		
		public function getShot( position:uint ):Shot
		{
			return position < _shots.length ? _shots[ position ] : null;
		}
		
		public function get shots():Vector.<Shot>
		{
			return _shots.concat();
		}
	}
}