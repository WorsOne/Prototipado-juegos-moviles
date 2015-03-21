package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.utils.setTimeout;
	import flash.utils.Timer;
	import XXXnoScope360HeadShot.Loader.XXXLoader;
	
	/**
	 * ...
	 * @author Mauricio Larrea
	 */
	public class Main extends Sprite 
	{
		private var circle:Sprite;
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			var game:Game1 = new Game1();
			//addChild(game);
			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var loader:XXXLoader = new XXXLoader("assets.swf", startGame); 
			
		}
		
		private function startGame():void {
			
			var c:Class = Global.assets.getDefinition("Heroe") as Class;
			var mc:MovieClip = new c();
			addChild(mc)
			mc.x = 200;
			mc.y = 200;
			trace()
		}
		

		
		
	}
	
}