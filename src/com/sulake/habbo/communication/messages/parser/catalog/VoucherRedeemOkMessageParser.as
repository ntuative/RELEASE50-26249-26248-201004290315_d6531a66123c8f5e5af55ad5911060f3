package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1370:String = "";
      
      private var var_1371:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1371 = "";
         var_1370 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1370;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1371 = param1.readString();
         var_1370 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1371;
      }
   }
}
