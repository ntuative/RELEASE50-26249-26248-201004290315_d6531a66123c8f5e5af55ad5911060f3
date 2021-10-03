package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1724:Array;
      
      private var var_1725:String;
      
      private var var_1726:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1725 = param1;
         var_1724 = param2;
         var_1726 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1725;
      }
      
      public function get yieldList() : Array
      {
         return var_1724;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1726;
      }
   }
}
