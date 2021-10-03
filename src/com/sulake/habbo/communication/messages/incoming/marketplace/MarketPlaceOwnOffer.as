package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1580:int = 2;
      
      public static const const_1533:int = 1;
      
      public static const const_1556:int = 0;
       
      
      private var var_1364:int;
      
      private var var_163:int;
      
      private var var_2403:int;
      
      private var _offerId:int;
      
      private var var_2085:int;
      
      private var var_1863:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1863 = param2;
         var_2085 = param3;
         var_1364 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1863;
      }
      
      public function get furniType() : int
      {
         return var_2085;
      }
      
      public function get price() : int
      {
         return var_1364;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
