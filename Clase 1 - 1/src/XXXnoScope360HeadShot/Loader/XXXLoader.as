package XXXnoScope360HeadShot.Loader
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	
	/**
	 * ...
	 * @author Mauricio Larrea
	 */
	public class XXXLoader
	{
		private var loader:Loader;
		private var on_complete:Function;
		
		public function XXXLoader(url:String, on_complete:Function)
		{
			this.on_complete = on_complete;
			
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
			var urlRequest:URLRequest = new URLRequest(url);
			loader.load(urlRequest);
		
		}
		
		private function onComplete(e:Event):void
		{
			loader.removeEventListener(Event.COMPLETE, onComplete);
			Global.assets = e.target.applicationDomain;
			trace("Terminó la carga");
			this.on_complete();
		}
	
	}

}