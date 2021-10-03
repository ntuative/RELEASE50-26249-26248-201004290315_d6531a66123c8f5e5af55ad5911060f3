package com.sulake.habbo.room.object.visualization.room.publicroom.rasterizer
{
   public class LayoutRasterizerData
   {
       
      
      private var var_1340:XMLList;
      
      public function LayoutRasterizerData(param1:XML)
      {
         super();
         var_1340 = param1.elements.element;
      }
      
      public function get elementList() : XMLList
      {
         return var_1340;
      }
      
      public function dispose() : void
      {
         var_1340 = null;
      }
   }
}
