package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomSettingsFlatInfo
   {
      
      public static const const_446:int = 0;
      
      public static const const_115:int = 2;
      
      public static const const_171:int = 1;
      
      public static const const_629:Array = ["open","closed","password"];
       
      
      private var _id:int;
      
      private var var_2044:Boolean;
      
      private var _password:String;
      
      private var var_1938:int;
      
      private var _type:String;
      
      private var _ownerName:String;
      
      private var var_2045:Boolean;
      
      private var var_2043:Boolean;
      
      private var _name:String;
      
      private var var_1935:Boolean;
      
      private var var_1166:String;
      
      public function RoomSettingsFlatInfo()
      {
         super();
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_2044 = param1;
      }
      
      public function get categoryAlertKey() : Boolean
      {
         return var_2043;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_2045 = param1;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1935;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_2045;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_2044;
      }
      
      public function set categoryAlertKey(param1:Boolean) : void
      {
         var_2043 = param1;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1935 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1938;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1166 = param1;
      }
      
      public function get description() : String
      {
         return var_1166;
      }
   }
}
