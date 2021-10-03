package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_376:Boolean;
      
      private var var_1225:int;
      
      private var var_1612:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1225 = param1.readInteger();
         var_1612 = param1.readString();
         var_376 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_376;
      }
      
      public function get nodeName() : String
      {
         return var_1612;
      }
      
      public function get nodeId() : int
      {
         return var_1225;
      }
   }
}
