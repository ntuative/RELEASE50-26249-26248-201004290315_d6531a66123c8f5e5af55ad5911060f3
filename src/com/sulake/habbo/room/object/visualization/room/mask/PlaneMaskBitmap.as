package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_55:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1843:Number = -1;
      
      private var var_873:IGraphicAsset = null;
      
      private var var_1845:Number = 1;
      
      private var var_1844:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1843 = param2;
         _normalMaxX = param3;
         var_1844 = param4;
         var_1845 = param5;
         var_873 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1845;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1843;
      }
      
      public function get normalMinY() : Number
      {
         return var_1844;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_873;
      }
      
      public function dispose() : void
      {
         var_873 = null;
      }
   }
}
