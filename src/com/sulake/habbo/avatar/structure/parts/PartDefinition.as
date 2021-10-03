package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1497:int = -1;
      
      private var var_1210:Boolean;
      
      private var var_1211:String;
      
      private var var_1835:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1835 = String(param1["set-type"]);
         var_1211 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1210 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1497 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1211;
      }
      
      public function get staticId() : int
      {
         return var_1497;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1497 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1210;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1210 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1211 = param1;
      }
      
      public function get setType() : String
      {
         return var_1835;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
