package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1534:int = 2;
      
      public static const const_1398:int = 4;
      
      public static const const_1289:int = 1;
      
      public static const const_1240:int = 3;
       
      
      private var var_960:int = 0;
      
      private var var_778:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_960;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_960 = param1.readInteger();
         if(var_960 == 3)
         {
            var_778 = param1.readString();
         }
         else
         {
            var_778 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_960 = 0;
         var_778 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_778;
      }
   }
}
