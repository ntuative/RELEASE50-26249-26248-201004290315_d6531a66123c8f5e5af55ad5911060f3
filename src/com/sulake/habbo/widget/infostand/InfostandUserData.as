package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   
   public class InfostandUserData
   {
       
      
      private var var_1765:String = "";
      
      private var var_1763:int = 0;
      
      private var _userName:String = "";
      
      private var var_267:Array;
      
      private var _type:String;
      
      private var _userId:int = 0;
      
      private var var_1764:int = 0;
      
      private var var_852:int = 0;
      
      private var var_998:int = 0;
      
      private var var_506:int = 0;
      
      public function InfostandUserData()
      {
         var_267 = [];
         super();
      }
      
      public function get groupId() : int
      {
         return var_998;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function isBot() : Boolean
      {
         return type == RoomWidgetUserInfoUpdateEvent.BOT;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get userRoomId() : int
      {
         return var_1764;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set userId(param1:int) : void
      {
         _userId = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1763;
      }
      
      public function get petRespectLeft() : int
      {
         return var_506;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1765;
      }
      
      public function set badges(param1:Array) : void
      {
         var_267 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_852 = param1;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1763 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_852;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_506 = param1;
      }
      
      public function set userName(param1:String) : void
      {
         _userName = param1;
      }
      
      public function get badges() : Array
      {
         return var_267.slice();
      }
      
      public function setData(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userId = param1.webID;
         userName = param1.name;
         badges = param1.badges;
         groupId = param1.groupId;
         groupBadgeId = param1.groupBadgeId;
         respectLeft = param1.respectLeft;
         carryItem = param1.carryItem;
         userRoomId = param1.userRoomId;
         type = param1.type;
      }
      
      public function set groupId(param1:int) : void
      {
         var_998 = param1;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1765 = param1;
      }
   }
}
