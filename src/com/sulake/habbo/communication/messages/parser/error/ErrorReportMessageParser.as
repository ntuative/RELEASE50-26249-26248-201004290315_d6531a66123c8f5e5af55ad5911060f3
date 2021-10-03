package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1268:int;
      
      private var var_1149:int;
      
      private var var_1267:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1268;
      }
      
      public function flush() : Boolean
      {
         var_1149 = 0;
         var_1268 = 0;
         var_1267 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1149;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1268 = param1.readInteger();
         var_1149 = param1.readInteger();
         var_1267 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1267;
      }
   }
}
