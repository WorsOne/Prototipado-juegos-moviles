package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	/**
	 * ...
	 * @author Mauricio Larrea
	 */
	public class Game1 extends Sprite
	{
		private var circle:Sprite;
		private var timer:Timer;
		
		public function Game1()
		{
			addEventListener(Event.ADDED_TO_STAGE, addedToStage);
			
		}
		
		public function drawRectangle(e:TimerEvent):void
		{
			var rectangle:Sprite = new Sprite();
			rectangle.graphics.beginFill(0x2626F4);
			rectangle.graphics.drawRect(0, 0, 250, 150);
			rectangle.graphics.endFill();
			rectangle.x = Math.random() * stage.stageWidth;
			rectangle.y = Math.random() * stage.stageHeight;
			addChild(rectangle);
			rectangle.addEventListener(MouseEvent.CLICK, clicRectangle);
			circle.addEventListener(MouseEvent.CLICK, clickCircle);
		}
		
		private function clicKRectangle(e:MouseEvent):void 
		{
			removeEventListener(MouseEvent.CLICK, clicRectangle);
		}
		
		private function clicRectangle(e:MouseEvent):void
		{
			var mc:Sprite = e.target as Sprite
			removeChild(mc);
		}
		
		private function clickCircle(e:MouseEvent):void
		{
			if (!timer.running) {
				timer.start();
			}
			else {
				timer.stop();
			}
		}
		
		private function addedToStage(e:Event):void
		{
			circle = new Sprite();
			circle.graphics.beginFill(0x5EF271);
			circle.graphics.drawCircle(0, 0, 100);
			circle.graphics.endFill();
			circle.x = 100;
			circle.y = 100;
			addChild(circle);
			timer = new Timer(1000);
			timer.addEventListener(TimerEvent.TIMER, drawRectangle);
			timer.start();
			removeEventListener(Event.ADDED_TO_STAGE, addedToStage);
		
		}
		
	
	}

}