package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_640:int = 2;
      
      public static const const_891:int = 6;
      
      public static const const_620:int = 1;
      
      public static const const_669:int = 3;
      
      public static const const_882:int = 4;
      
      public static const const_601:int = 5;
       
      
      private var var_1945:String;
      
      private var var_1029:int;
      
      private var var_1944:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1029 = param2;
         var_1944 = param3;
         var_1945 = param4;
      }
      
      public function get time() : String
      {
         return var_1945;
      }
      
      public function get senderId() : int
      {
         return var_1029;
      }
      
      public function get messageText() : String
      {
         return var_1944;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
