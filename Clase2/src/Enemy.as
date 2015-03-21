package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.loader.XXXLoader;
	/**
	 * ...
	 * @author Mauricio Larrea
	 */
	public class Enemy extends Sprite
	{
		private var skin:Sprite;
		private var velocity:int;
		
		public function Enemy() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, added);
			velocity = 1;
			removeEventListener(Event.ADDED_TO_STAGE, added);
			var c:Class = XXXLoader.getAsset("Luigi");
			skin = new c();
			addChild(skin);
		}
		
	}

}