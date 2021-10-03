package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomAdUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_866:String = "RORUM_ROOM_AD_ACTIVATE";
       
      
      private var var_873:String;
      
      private var var_1572:String;
      
      private var _type:String;
      
      public function RoomObjectRoomAdUpdateMessage(param1:String, param2:String, param3:String)
      {
         super(null,null);
         _type = param1;
         var_873 = param2;
         var_1572 = param3;
      }
      
      public function get asset() : String
      {
         return var_873;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get clickUrl() : String
      {
         return var_1572;
      }
   }
}
