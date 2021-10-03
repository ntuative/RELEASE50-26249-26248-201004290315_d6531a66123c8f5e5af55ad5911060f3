package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1931:int;
      
      private var var_2179:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2179 = param1.readString();
         var_1931 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2179;
      }
      
      public function get userCount() : int
      {
         return var_1931;
      }
   }
}
