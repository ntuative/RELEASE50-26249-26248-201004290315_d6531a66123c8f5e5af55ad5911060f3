package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1025:Boolean;
      
      private var _name:String;
      
      private var var_2250:String;
      
      private var var_1024:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2250 = String(param1.@link);
         var_1024 = Boolean(parseInt(param1.@fliph));
         var_1025 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1024;
      }
      
      public function get flipV() : Boolean
      {
         return var_1025;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2250;
      }
   }
}
