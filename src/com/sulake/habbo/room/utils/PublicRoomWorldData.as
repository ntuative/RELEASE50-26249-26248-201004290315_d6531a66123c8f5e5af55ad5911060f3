package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1886:Number = 1;
      
      private var var_196:Number = 1;
      
      private var var_2032:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2032 = param1;
         var_196 = param2;
         var_1886 = param3;
      }
      
      public function get scale() : Number
      {
         return var_196;
      }
      
      public function get heightScale() : Number
      {
         return var_1886;
      }
   }
}
