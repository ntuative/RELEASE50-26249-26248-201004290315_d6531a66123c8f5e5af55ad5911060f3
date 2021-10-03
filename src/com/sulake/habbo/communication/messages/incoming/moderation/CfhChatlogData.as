package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2068:int;
      
      private var var_1007:int;
      
      private var var_2144:int;
      
      private var var_1578:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1578 = param1.readInteger();
         var_2144 = param1.readInteger();
         var_1007 = param1.readInteger();
         var_2068 = param1.readInteger();
         var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1578);
      }
      
      public function get chatRecordId() : int
      {
         return var_2068;
      }
      
      public function get reportedUserId() : int
      {
         return var_1007;
      }
      
      public function get callerUserId() : int
      {
         return var_2144;
      }
      
      public function get callId() : int
      {
         return var_1578;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_113;
      }
   }
}
