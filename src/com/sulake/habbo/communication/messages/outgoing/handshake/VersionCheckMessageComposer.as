package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2103:String;
      
      private var var_1163:String;
      
      private var var_2102:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2102 = param1;
         var_1163 = param2;
         var_2103 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2102,var_1163,var_2103];
      }
      
      public function dispose() : void
      {
      }
   }
}
