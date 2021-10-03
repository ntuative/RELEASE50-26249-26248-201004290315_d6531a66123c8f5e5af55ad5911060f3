package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_530:String = "RWSSM_STORE_SOUND";
      
      public static const const_725:String = "RWSSM_PREVIEW_SOUND";
      
      public static const const_1302:String = "RWSSM_STORE_SETTINGS";
       
      
      private var var_713:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function set volume(param1:Number) : void
      {
         var_713 = param1;
      }
      
      public function get volume() : Number
      {
         return var_713;
      }
   }
}
