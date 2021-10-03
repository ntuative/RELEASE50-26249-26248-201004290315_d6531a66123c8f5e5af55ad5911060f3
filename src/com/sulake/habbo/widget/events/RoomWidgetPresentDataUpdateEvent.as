package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_411:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_397:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_84:String = "RWPDUE_CONTENTS";
      
      public static const const_378:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_384:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_64:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_212:String;
      
      private var var_1982:BitmapData;
      
      private var var_161:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_161 = param2;
         var_212 = param3;
         var_29 = param4;
         var_1982 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1982;
      }
      
      public function get text() : String
      {
         return var_212;
      }
      
      public function get objectId() : int
      {
         return var_161;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
