package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1775:Number;
      
      private var var_577:Number = 0;
      
      private var var_1774:Number;
      
      private var var_578:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1775 = param1;
         var_1774 = param2;
      }
      
      public function update() : void
      {
         var_578 += var_1774;
         var_577 += var_578;
         if(var_577 > 0)
         {
            var_577 = 0;
            var_578 = var_1775 * -1 * var_578;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_578 = param1;
         var_577 = 0;
      }
      
      public function get location() : Number
      {
         return var_577;
      }
   }
}
