package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1535:Array;
      
      private var var_1780:int;
      
      private var var_1782:int;
      
      private var var_1781:int;
      
      private var var_1779:int;
      
      private var _dayOffsets:Array;
      
      private var var_1778:int;
      
      private var var_1534:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1535;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1535 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1782;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1534 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1780 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1781;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1779;
      }
      
      public function get offerCount() : int
      {
         return var_1778;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1778 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1534;
      }
      
      public function get averagePrice() : int
      {
         return var_1780;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1779 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1781 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1782 = param1;
      }
   }
}
