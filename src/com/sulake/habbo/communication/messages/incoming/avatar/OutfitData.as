package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1722:String;
      
      private var var_635:String;
      
      private var var_1602:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1602 = param1.readInteger();
         var_1722 = param1.readString();
         var_635 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_635;
      }
      
      public function get figureString() : String
      {
         return var_1722;
      }
      
      public function get slotId() : int
      {
         return var_1602;
      }
   }
}
