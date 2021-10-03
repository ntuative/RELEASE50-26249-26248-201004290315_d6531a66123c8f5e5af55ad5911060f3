package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1118:int = 1;
      
      private static const const_1039:int = 3;
      
      private static const const_1117:int = 2;
      
      private static const const_1119:int = 15;
       
      
      private var var_911:int;
      
      private var var_218:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_218 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1117)
         {
            var_218 = new Array();
            var_218.push(const_1118);
            var_911 = const_1119;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_911 > 0)
         {
            --var_911;
         }
         if(var_911 == 0)
         {
            if(false)
            {
               super.setAnimation(var_218.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
