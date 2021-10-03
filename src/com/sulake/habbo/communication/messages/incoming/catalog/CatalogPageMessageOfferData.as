package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_909:Array;
      
      private var var_780:int;
      
      private var var_1128:String;
      
      private var _offerId:int;
      
      private var var_779:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1128 = param1.readString();
         var_780 = param1.readInteger();
         var_779 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_909 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_909.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_909;
      }
      
      public function get priceInCredits() : int
      {
         return var_780;
      }
      
      public function get localizationId() : String
      {
         return var_1128;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_779;
      }
   }
}
