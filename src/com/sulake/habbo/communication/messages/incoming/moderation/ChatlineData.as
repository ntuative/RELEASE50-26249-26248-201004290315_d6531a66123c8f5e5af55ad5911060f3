package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1564:String;
      
      private var var_1811:int;
      
      private var var_1813:int;
      
      private var var_1810:int;
      
      private var var_1812:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1811 = param1.readInteger();
         var_1810 = param1.readInteger();
         var_1813 = param1.readInteger();
         var_1812 = param1.readString();
         var_1564 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1564;
      }
      
      public function get hour() : int
      {
         return var_1811;
      }
      
      public function get minute() : int
      {
         return var_1810;
      }
      
      public function get chatterName() : String
      {
         return var_1812;
      }
      
      public function get chatterId() : int
      {
         return var_1813;
      }
   }
}
