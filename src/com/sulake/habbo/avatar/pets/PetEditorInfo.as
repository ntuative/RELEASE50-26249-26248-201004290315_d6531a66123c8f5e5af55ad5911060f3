package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2227:Boolean;
      
      private var var_2087:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2227 = Boolean(parseInt(param1.@club));
         var_2087 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2227;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_2087;
      }
   }
}
