package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1039:int = -1;
      
      private static const const_749:int = 20;
      
      private static const const_495:int = 9;
       
      
      private var var_620:Boolean = false;
      
      private var var_218:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_218 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_620 = true;
            var_218 = new Array();
            var_218.push(const_1039);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_620)
            {
               var_620 = false;
               var_218 = new Array();
               var_218.push(const_749);
               var_218.push(const_495 + param1);
               var_218.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
