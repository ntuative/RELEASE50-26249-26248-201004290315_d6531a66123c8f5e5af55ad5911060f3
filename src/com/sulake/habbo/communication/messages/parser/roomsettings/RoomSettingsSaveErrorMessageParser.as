package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1605:int = 9;
      
      public static const const_1600:int = 4;
      
      public static const const_1493:int = 1;
      
      public static const const_1239:int = 10;
      
      public static const const_1523:int = 2;
      
      public static const const_1195:int = 7;
      
      public static const const_1233:int = 11;
      
      public static const const_1492:int = 3;
      
      public static const const_1198:int = 8;
      
      public static const const_1260:int = 5;
      
      public static const const_1480:int = 6;
      
      public static const const_1343:int = 12;
       
      
      private var var_1728:String;
      
      private var _roomId:int;
      
      private var var_1149:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1728;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1149 = param1.readInteger();
         var_1728 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1149;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
