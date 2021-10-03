package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_140:int = 1;
      
      public static const const_1140:int = 3;
      
      public static const const_382:int = 2;
       
      
      private var var_2072:int;
      
      private var var_2004:int;
      
      private var var_2076:int;
      
      private var var_1992:int;
      
      private var var_33:int;
      
      private var var_389:int;
      
      private var var_1275:int;
      
      private var var_1804:int;
      
      private var var_1007:int;
      
      private var _roomResources:String;
      
      private var var_2068:int;
      
      private var var_2074:int;
      
      private var var_2077:String;
      
      private var var_2069:String;
      
      private var var_2071:int = 0;
      
      private var var_1170:String;
      
      private var _message:String;
      
      private var var_2073:int;
      
      private var var_2070:String;
      
      private var var_1287:int;
      
      private var var_742:String;
      
      private var var_2075:String;
      
      private var var_1528:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1007 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2071 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2074;
      }
      
      public function set roomName(param1:String) : void
      {
         var_742 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2068 = param1;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_742;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1992 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_33 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2004;
      }
      
      public function get priority() : int
      {
         return var_2072 + var_2071;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1804 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2069;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1528) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1287;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2074 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1275;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2077 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2068;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1992;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2075 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1170 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1804;
      }
      
      public function set priority(param1:int) : void
      {
         var_2072 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2004 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2077;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2076 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2069 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2073 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1170;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1275 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2076;
      }
      
      public function set flatId(param1:int) : void
      {
         var_389 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1287 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1528 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2073;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2070 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1528;
      }
      
      public function get reportedUserId() : int
      {
         return var_1007;
      }
      
      public function get flatId() : int
      {
         return var_389;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2075;
      }
      
      public function get reporterUserName() : String
      {
         return var_2070;
      }
   }
}
