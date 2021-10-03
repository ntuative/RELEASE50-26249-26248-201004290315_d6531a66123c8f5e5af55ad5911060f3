package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_596:int = -1;
      
      public static const const_809:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2036:int = -1;
      
      private var var_84:int = 0;
      
      private var var_1285:int = 1;
      
      private var var_877:int = 1;
      
      private var var_2035:Boolean = false;
      
      private var var_2037:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_2035 = param5;
         if(param4 < 0)
         {
            param4 = const_596;
         }
         var_877 = param4;
         var_1285 = param4;
         if(param6 >= 0)
         {
            var_2036 = param6;
            var_2037 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_877 > 0 && param1 > var_877)
         {
            param1 = var_877;
         }
         var_1285 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_877;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2037;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_877 < 0)
         {
            return const_596;
         }
         return var_1285;
      }
      
      public function get activeSequence() : int
      {
         return var_2036;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2035;
      }
      
      public function get x() : int
      {
         return var_84;
      }
   }
}
