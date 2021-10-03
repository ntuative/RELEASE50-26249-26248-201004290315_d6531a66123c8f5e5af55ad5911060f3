package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1282:int = 2;
      
      public static const const_1592:int = 1;
       
      
      private var var_2246:int;
      
      private var var_2242:int;
      
      private var var_1927:Boolean;
      
      private var var_2244:int;
      
      private var var_1370:String;
      
      private var var_2245:Boolean;
      
      private var var_2090:int;
      
      private var var_2243:int;
      
      private var var_2091:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2242;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1927;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2243;
      }
      
      public function get memberPeriods() : int
      {
         return var_2244;
      }
      
      public function get productName() : String
      {
         return var_1370;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2245;
      }
      
      public function get responseType() : int
      {
         return var_2246;
      }
      
      public function get pastClubDays() : int
      {
         return var_2091;
      }
      
      public function get pastVipDays() : int
      {
         return var_2090;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1370 = param1.readString();
         var_2242 = param1.readInteger();
         var_2244 = param1.readInteger();
         var_2243 = param1.readInteger();
         var_2246 = param1.readInteger();
         var_2245 = param1.readBoolean();
         var_1927 = param1.readBoolean();
         var_2091 = param1.readInteger();
         var_2090 = param1.readInteger();
         return true;
      }
   }
}
