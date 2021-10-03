package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_209:String = "e";
      
      public static const const_86:String = "i";
      
      public static const const_80:String = "s";
       
      
      private var var_969:String;
      
      private var var_1138:String;
      
      private var var_1140:int;
      
      private var var_1818:int;
      
      private var var_968:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1138 = param1.readString();
         var_1818 = param1.readInteger();
         var_969 = param1.readString();
         var_968 = param1.readInteger();
         var_1140 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_968;
      }
      
      public function get productType() : String
      {
         return var_1138;
      }
      
      public function get expiration() : int
      {
         return var_1140;
      }
      
      public function get furniClassId() : int
      {
         return var_1818;
      }
      
      public function get extraParam() : String
      {
         return var_969;
      }
   }
}
