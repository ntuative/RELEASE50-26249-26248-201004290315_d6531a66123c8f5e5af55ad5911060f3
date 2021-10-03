package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1566:String;
      
      private var var_1596:String;
      
      private var var_1057:String;
      
      private var var_399:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1566 = String(param1.@align);
         var_1057 = String(param1.@base);
         var_1596 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_399 = Number(_loc2_);
            if(var_399 > 1)
            {
               var_399 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1566;
      }
      
      public function get ink() : String
      {
         return var_1596;
      }
      
      public function get base() : String
      {
         return var_1057;
      }
      
      public function get isBlended() : Boolean
      {
         return var_399 != 1;
      }
      
      public function get blend() : Number
      {
         return var_399;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
