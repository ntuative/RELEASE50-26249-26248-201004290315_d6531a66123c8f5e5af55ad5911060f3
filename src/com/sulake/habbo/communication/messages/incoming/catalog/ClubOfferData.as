package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_2007:int;
      
      private var var_1364:int;
      
      private var var_2008:int;
      
      private var _offerId:int;
      
      private var var_2010:int;
      
      private var var_2014:int;
      
      private var var_2009:Boolean;
      
      private var var_2012:int;
      
      private var var_2011:Boolean;
      
      private var var_1127:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1127 = param1.readString();
         var_1364 = param1.readInteger();
         var_2011 = param1.readBoolean();
         var_2009 = param1.readBoolean();
         var_2008 = param1.readInteger();
         var_2012 = param1.readInteger();
         var_2010 = param1.readInteger();
         var_2007 = param1.readInteger();
         var_2014 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_2010;
      }
      
      public function get month() : int
      {
         return var_2007;
      }
      
      public function get price() : int
      {
         return var_1364;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_2008;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2012;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2011;
      }
      
      public function get day() : int
      {
         return var_2014;
      }
      
      public function get vip() : Boolean
      {
         return var_2009;
      }
      
      public function get productCode() : String
      {
         return var_1127;
      }
   }
}
