package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1326:int;
      
      private var var_1049:String;
      
      private var var_734:Array;
      
      private var var_1070:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_734.slice();
      }
      
      public function flush() : Boolean
      {
         var_1049 = "";
         var_1070 = [];
         var_734 = [];
         var_1326 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1326;
      }
      
      public function get question() : String
      {
         return var_1049;
      }
      
      public function get choices() : Array
      {
         return var_1070.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1049 = param1.readString();
         var_1070 = [];
         var_734 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1070.push(param1.readString());
            var_734.push(param1.readInteger());
            _loc3_++;
         }
         var_1326 = param1.readInteger();
         return true;
      }
   }
}
