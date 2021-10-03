package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_313:String;
      
      private var var_1686:int;
      
      private var var_1946:String;
      
      private var var_1039:int;
      
      private var var_1303:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1303;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1303 = param1.readInteger();
         var_1946 = param1.readString();
         var_1686 = param1.readInteger();
         var_313 = param1.readString();
         var_1039 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1946;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_313;
      }
      
      public function get petType() : int
      {
         return var_1039;
      }
      
      public function get level() : int
      {
         return var_1686;
      }
   }
}
