package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_707:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_533:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_707);
         var_533 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_533;
      }
   }
}
