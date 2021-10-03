package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2203:int;
      
      private var var_2208:int;
      
      private var var_2205:int;
      
      private var _userName:String;
      
      private var var_2207:int;
      
      private var var_2206:int;
      
      private var var_2204:int;
      
      private var _userId:int;
      
      private var var_700:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2206 = param1.readInteger();
         var_2207 = param1.readInteger();
         var_700 = param1.readBoolean();
         var_2205 = param1.readInteger();
         var_2208 = param1.readInteger();
         var_2203 = param1.readInteger();
         var_2204 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2204;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_700;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2207;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2208;
      }
      
      public function get cautionCount() : int
      {
         return var_2203;
      }
      
      public function get cfhCount() : int
      {
         return var_2205;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2206;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
