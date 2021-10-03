package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_1020:String = "AssetLoaderEventUnload";
      
      public static const const_48:String = "AssetLoaderEventError";
      
      public static const const_1006:String = "AssetLoaderEventOpen";
      
      public static const const_923:String = "AssetLoaderEventProgress";
      
      public static const const_979:String = "AssetLoaderEventStatus";
      
      public static const const_37:String = "AssetLoaderEventComplete";
       
      
      private var var_163:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_163 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_163);
      }
   }
}
