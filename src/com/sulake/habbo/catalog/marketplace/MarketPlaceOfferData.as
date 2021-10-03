package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_2228:int;
      
      private var var_1364:int;
      
      private var var_1780:int;
      
      private var var_2130:int = -1;
      
      private var var_163:int;
      
      private var var_2085:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1363:int;
      
      private var var_1863:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1863 = param2;
         var_2085 = param3;
         var_1364 = param4;
         var_163 = param5;
         var_1780 = param6;
         var_1363 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_2228 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_2228;
      }
      
      public function get price() : int
      {
         return var_1364;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2130;
      }
      
      public function get offerCount() : int
      {
         return var_1363;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_2085;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_2130 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1364 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1363 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      public function get averagePrice() : int
      {
         return var_1780;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1863;
      }
   }
}
