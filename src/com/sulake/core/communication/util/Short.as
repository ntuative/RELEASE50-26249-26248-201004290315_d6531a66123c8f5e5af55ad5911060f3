package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_690:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_690 = new ByteArray();
         var_690.writeShort(param1);
         var_690.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_690.position = 0;
         if(false)
         {
            _loc1_ = var_690.readShort();
            var_690.position = 0;
         }
         return _loc1_;
      }
   }
}
