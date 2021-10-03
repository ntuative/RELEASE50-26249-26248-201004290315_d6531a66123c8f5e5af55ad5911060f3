package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1830:int;
      
      private var var_1522:int;
      
      private var var_1829:int;
      
      private var var_1827:int;
      
      private var var_1828:int;
      
      private var var_1521:int;
      
      private var var_1831:int;
      
      private var var_1368:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1830;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1522;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1831;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1827;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1828;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1521;
      }
      
      public function get commission() : int
      {
         return var_1829;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1368 = param1.readBoolean();
         var_1829 = param1.readInteger();
         var_1522 = param1.readInteger();
         var_1521 = param1.readInteger();
         var_1827 = param1.readInteger();
         var_1830 = param1.readInteger();
         var_1828 = param1.readInteger();
         var_1831 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1368;
      }
   }
}
