package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_313:String;
      
      private var var_1382:String;
      
      private var var_1383:String;
      
      private var var_1287:int;
      
      private var var_635:int;
      
      private var var_1384:String;
      
      private var _name:String;
      
      private var var_1161:Boolean;
      
      private var var_700:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_635 = param1.readInteger();
         this.var_700 = param1.readBoolean();
         this.var_1161 = param1.readBoolean();
         this.var_313 = param1.readString();
         this.var_1287 = param1.readInteger();
         this.var_1383 = param1.readString();
         this.var_1382 = param1.readString();
         this.var_1384 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_635;
      }
      
      public function get realName() : String
      {
         return var_1384;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1383;
      }
      
      public function get categoryId() : int
      {
         return var_1287;
      }
      
      public function get online() : Boolean
      {
         return var_700;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1161;
      }
      
      public function get lastAccess() : String
      {
         return var_1382;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_313;
      }
   }
}
