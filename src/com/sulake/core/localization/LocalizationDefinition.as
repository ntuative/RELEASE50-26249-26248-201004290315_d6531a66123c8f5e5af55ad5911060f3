package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1447:String;
      
      private var var_645:String;
      
      private var var_1448:String;
      
      private var var_1446:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1446 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1447 = _loc5_[0];
         var_1448 = _loc5_[1];
         _name = param2;
         var_645 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1447;
      }
      
      public function get languageCode() : String
      {
         return var_1446;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_645;
      }
      
      public function get encoding() : String
      {
         return var_1448;
      }
      
      public function get id() : String
      {
         return var_1446 + "_" + var_1447 + "." + var_1448;
      }
   }
}
