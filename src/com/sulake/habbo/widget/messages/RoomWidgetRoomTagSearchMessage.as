package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_715:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1699:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_715);
         var_1699 = param1;
      }
      
      public function get tag() : String
      {
         return var_1699;
      }
   }
}
