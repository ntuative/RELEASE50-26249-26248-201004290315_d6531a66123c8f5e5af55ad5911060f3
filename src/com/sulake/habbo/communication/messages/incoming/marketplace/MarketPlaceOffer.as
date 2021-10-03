package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1364:int;
      
      private var var_2130:int = -1;
      
      private var var_163:int;
      
      private var var_1780:int;
      
      private var var_2085:int;
      
      private var _offerId:int;
      
      private var var_1363:int;
      
      private var var_1863:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1863 = param2;
         var_2085 = param3;
         var_1364 = param4;
         var_163 = param5;
         var_2130 = param6;
         var_1780 = param7;
         var_1363 = param8;
      }
      
      public function get status() : int
      {
         return var_163;
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
      
      public function get averagePrice() : int
      {
         return var_1780;
      }
      
      public function get furniId() : int
      {
         return var_1863;
      }
   }
}
