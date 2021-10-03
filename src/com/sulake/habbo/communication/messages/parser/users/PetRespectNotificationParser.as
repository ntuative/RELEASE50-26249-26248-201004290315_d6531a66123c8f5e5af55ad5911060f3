package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1803:int;
      
      private var var_1197:PetData;
      
      private var var_1802:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1803;
      }
      
      public function get petData() : PetData
      {
         return var_1197;
      }
      
      public function flush() : Boolean
      {
         var_1197 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1802;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1803 = param1.readInteger();
         var_1802 = param1.readInteger();
         var_1197 = new PetData(param1);
         return true;
      }
   }
}
