package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_225:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_225 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_225;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_225 = new RoomSettingsFlatInfo();
         var_225.allowFurniMoving = param1.readInteger() == 1;
         var_225.doorMode = param1.readInteger();
         var_225.id = param1.readInteger();
         var_225.ownerName = param1.readString();
         var_225.type = param1.readString();
         var_225.name = param1.readString();
         var_225.description = param1.readString();
         var_225.showOwnerName = param1.readInteger() == 1;
         var_225.allowTrading = param1.readInteger() == 1;
         var_225.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
