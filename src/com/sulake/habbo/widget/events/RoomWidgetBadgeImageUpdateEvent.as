package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_671:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2038:BitmapData;
      
      private var var_2039:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_671,param3,param4);
         var_2039 = param1;
         var_2038 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_2038;
      }
      
      public function get badgeID() : String
      {
         return var_2039;
      }
   }
}
