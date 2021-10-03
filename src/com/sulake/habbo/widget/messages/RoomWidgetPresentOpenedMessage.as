package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1377:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1296:int;
      
      private var var_1018:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_1018 = param2;
         var_1296 = param3;
      }
      
      public function get classId() : int
      {
         return var_1296;
      }
      
      public function get itemType() : String
      {
         return var_1018;
      }
   }
}
