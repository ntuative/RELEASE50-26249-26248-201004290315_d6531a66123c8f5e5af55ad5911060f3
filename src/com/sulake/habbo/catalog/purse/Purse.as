package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2092:int = 0;
      
      private var var_1559:int = 0;
      
      private var var_1927:Boolean = false;
      
      private var var_1808:int = 0;
      
      private var var_2090:int = 0;
      
      private var var_1558:int = 0;
      
      private var var_2091:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1559;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1559 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1927 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2091 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1559 > 0 || var_1558 > 0;
      }
      
      public function get credits() : int
      {
         return var_1808;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2090 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1558;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1927;
      }
      
      public function get pastClubDays() : int
      {
         return var_2091;
      }
      
      public function get pastVipDays() : int
      {
         return var_2090;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2092 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2092;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1558 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1808 = param1;
      }
   }
}
