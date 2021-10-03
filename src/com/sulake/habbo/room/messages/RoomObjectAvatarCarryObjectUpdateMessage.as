package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1018:int;
      
      private var var_1185:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1018 = param1;
         var_1185 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1018;
      }
      
      public function get itemName() : String
      {
         return var_1185;
      }
   }
}
