package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_635:String;
      
      private var _id:int;
      
      private var var_2123:String = "";
      
      private var var_2125:int;
      
      private var var_2124:String;
      
      private var var_1715:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2125 = parseInt(param1.@pattern);
         var_635 = String(param1.@gender);
         var_1715 = Boolean(parseInt(param1.@colorable));
         var_2123 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2123;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1715;
      }
      
      public function get gender() : String
      {
         return var_635;
      }
      
      public function get patternId() : int
      {
         return var_2125;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2124;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2124 = param1;
      }
   }
}
