package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_630:Array;
      
      private var var_1364:int;
      
      private var var_1407:Array;
      
      private var var_631:Array;
      
      private var var_1368:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1368 = _loc2_.isWrappingEnabled;
         var_1364 = _loc2_.wrappingPrice;
         var_1407 = _loc2_.stuffTypes;
         var_631 = _loc2_.boxTypes;
         var_630 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_630;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1407;
      }
      
      public function get price() : int
      {
         return var_1364;
      }
      
      public function get boxTypes() : Array
      {
         return var_631;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1368;
      }
   }
}
