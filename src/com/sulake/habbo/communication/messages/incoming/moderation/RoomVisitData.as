package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_742:String;
      
      private var var_2062:int;
      
      private var var_1539:Boolean;
      
      private var _roomId:int;
      
      private var var_2063:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1539 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_742 = param1.readString();
         var_2063 = param1.readInteger();
         var_2062 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1539;
      }
      
      public function get roomName() : String
      {
         return var_742;
      }
      
      public function get enterMinute() : int
      {
         return var_2062;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2063;
      }
   }
}
