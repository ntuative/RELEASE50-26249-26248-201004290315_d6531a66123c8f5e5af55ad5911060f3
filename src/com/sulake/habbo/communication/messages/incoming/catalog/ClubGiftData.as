package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2089:int;
      
      private var var_2088:Boolean;
      
      private var _offerId:int;
      
      private var var_2087:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2088 = param1.readBoolean();
         var_2089 = param1.readInteger();
         var_2087 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_2087;
      }
      
      public function get monthsRequired() : int
      {
         return var_2089;
      }
      
      public function get isVip() : Boolean
      {
         return var_2088;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
