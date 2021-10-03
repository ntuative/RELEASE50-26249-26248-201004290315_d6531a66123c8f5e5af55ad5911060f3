package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1595:int;
      
      private var var_1678:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1678 = param1.readString();
         var_1595 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1595;
      }
      
      public function get productItemType() : String
      {
         return var_1678;
      }
   }
}
