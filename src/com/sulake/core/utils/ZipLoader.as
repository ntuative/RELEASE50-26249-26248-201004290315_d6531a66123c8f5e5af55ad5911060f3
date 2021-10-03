package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import deng.fzip.FZipErrorEvent;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_1240:uint = 0;
      
      private var var_1241:uint = 0;
      
      private var var_97:FZip;
      
      private var var_1242:Array;
      
      private var var_1887:uint = 0;
      
      private var var_848:int = 0;
      
      private var var_2397:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1242 = new Array();
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_97)
         {
            var_97.removeEventListener(Event.COMPLETE,onComplete);
            var_97.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_97.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_97.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
            var_97.removeEventListener(FZipErrorEvent.const_110,onParseError);
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_163))
         {
            failure("IO Error, load operation failed for file \"undefined\": " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_1241;
      }
      
      private function onParseError(param1:FZipErrorEvent) : void
      {
         debug("Load event parse error for file \"undefined\"");
         if(!handleHttpStatus(var_163))
         {
            failure("Parse Error, load operation failed for file \"undefined\": " + param1.text);
            removeEventListeners();
         }
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return var_1240;
      }
      
      public function get resources() : Array
      {
         return var_1242;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var loaderInfo:LoaderInfo = null;
         var name:String = null;
         var event:Event = param1;
         try
         {
            loaderInfo = event.target as LoaderInfo;
            name = getQualifiedClassName(var_15.content);
            var_1242.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_848;
            if(var_1242.length == var_1887)
            {
               var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_1240,var_1241));
            }
            else
            {
               var_15.loadBytes(var_97.getFileAt(var_848).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\": " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_1240 = param1.bytesTotal;
         var_1241 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_1240,var_1241));
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_67 = param1;
         _name = parseNameFromUrl(var_67.url);
         var_292 = param3;
         if(var_97)
         {
            var_97.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_97 = new FZip();
         var_97.addEventListener(Event.COMPLETE,onComplete);
         var_97.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_97.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_97.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_97.addEventListener(FZipErrorEvent.const_110,onParseError);
         var_97.load(var_67);
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_292 > 0)
            {
               if(var_97)
               {
                  var_97.close();
               }
               addRequestCounterToUrlRequest(var_67,const_1032 - var_292);
               var_97.load(var_67);
               --var_292;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_67.url + "\"");
            removeEventListeners();
         }
         return false;
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_848 = 0;
         var_1887 = var_97.getFileCount();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_15)
            {
               var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_15.loadBytes(var_97.getFileAt(var_848).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_163))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\": " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_163 = param1.status;
         debug("Load event STATUS " + var_163 + " for file \"" + var_67.url + "\"");
      }
   }
}
