package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2129:String;
      
      private var var_778:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2129 = param1;
         var_778 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2129;
      }
      
      public function get parameter() : String
      {
         return var_778;
      }
   }
}
