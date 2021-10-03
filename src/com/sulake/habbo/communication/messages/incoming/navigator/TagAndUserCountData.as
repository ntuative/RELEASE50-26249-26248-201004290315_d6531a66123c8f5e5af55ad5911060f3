package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1931:int;
      
      private var var_1699:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1699 = param1.readString();
         this.var_1931 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1931;
      }
      
      public function get tag() : String
      {
         return this.var_1699;
      }
   }
}
