package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_871:String = "price_type_none";
      
      public static const const_479:String = "pricing_model_multi";
      
      public static const const_329:String = "price_type_credits";
      
      public static const const_401:String = "price_type_credits_and_pixels";
      
      public static const const_450:String = "pricing_model_bundle";
      
      public static const const_399:String = "pricing_model_single";
      
      public static const const_569:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1218:String = "pricing_model_unknown";
      
      public static const const_480:String = "price_type_pixels";
       
      
      private var var_1628:int;
      
      private var var_780:int;
      
      private var _offerId:int;
      
      private var var_779:int;
      
      private var var_387:String;
      
      private var var_555:String;
      
      private var var_440:ICatalogPage;
      
      private var var_386:IProductContainer;
      
      private var var_1128:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1128 = param1.localizationId;
         var_780 = param1.priceInCredits;
         var_779 = param1.priceInPixels;
         var_440 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_387;
      }
      
      public function get page() : ICatalogPage
      {
         return var_440;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1628 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_386;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_779;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1128 = "";
         var_780 = 0;
         var_779 = 0;
         var_440 = null;
         if(var_386 != null)
         {
            var_386.dispose();
            var_386 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1628;
      }
      
      public function get priceInCredits() : int
      {
         return var_780;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_387 = const_399;
            }
            else
            {
               var_387 = const_479;
            }
         }
         else if(param1.length > 1)
         {
            var_387 = const_450;
         }
         else
         {
            var_387 = const_1218;
         }
      }
      
      public function get priceType() : String
      {
         return var_555;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_387)
         {
            case const_399:
               var_386 = new SingleProductContainer(this,param1);
               break;
            case const_479:
               var_386 = new MultiProductContainer(this,param1);
               break;
            case const_450:
               var_386 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_387);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1128;
      }
      
      private function analyzePriceType() : void
      {
         if(var_780 > 0 && var_779 > 0)
         {
            var_555 = const_401;
         }
         else if(var_780 > 0)
         {
            var_555 = const_329;
         }
         else if(var_779 > 0)
         {
            var_555 = const_480;
         }
         else
         {
            var_555 = const_871;
         }
      }
   }
}
