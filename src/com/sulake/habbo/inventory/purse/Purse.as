package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1928:Boolean = false;
      
      private var var_1926:int = 0;
      
      private var var_1559:int = 0;
      
      private var var_1929:int = 0;
      
      private var var_1927:Boolean = false;
      
      private var var_1527:int = 0;
      
      private var var_1558:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1527 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1926;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1928;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1928 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1927;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1926 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1559 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1527;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1927 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1929 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1559;
      }
      
      public function get pixelBalance() : int
      {
         return var_1929;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1558 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1558;
      }
   }
}
