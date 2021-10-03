package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1023:Boolean;
      
      private var var_1214:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1023 = param1.readInteger() > 0;
         var_1214 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1023;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1214;
      }
      
      public function flush() : Boolean
      {
         var_1023 = false;
         var_1214 = false;
         return true;
      }
   }
}
