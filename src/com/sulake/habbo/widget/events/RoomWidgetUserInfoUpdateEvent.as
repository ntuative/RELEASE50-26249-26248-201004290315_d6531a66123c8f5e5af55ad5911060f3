package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_230:String = "RWUIUE_PEER";
      
      public static const const_232:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1281:String = "BOT";
      
      public static const const_943:int = 2;
      
      public static const const_1342:int = 0;
      
      public static const const_960:int = 3;
       
      
      private var var_313:String = "";
      
      private var var_1383:String = "";
      
      private var var_1976:Boolean = false;
      
      private var var_1974:int = 0;
      
      private var var_1764:int = 0;
      
      private var var_1968:Boolean = false;
      
      private var var_1384:String = "";
      
      private var var_1971:Boolean = false;
      
      private var var_852:int = 0;
      
      private var var_1969:Boolean = true;
      
      private var var_998:int = 0;
      
      private var var_1972:Boolean = false;
      
      private var var_1293:Boolean = false;
      
      private var var_1970:Boolean = false;
      
      private var var_1763:int = 0;
      
      private var var_1967:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_267:Array;
      
      private var var_1291:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1966:int = 0;
      
      private var var_1975:Boolean = false;
      
      private var var_1973:int = 0;
      
      private var var_1765:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_267 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1764;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1976;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1969;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1969 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1971 = param1;
      }
      
      public function get motto() : String
      {
         return var_1383;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1972 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1293;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1383 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1975;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1765;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1293 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1967;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1763 = param1;
      }
      
      public function get badges() : Array
      {
         return var_267;
      }
      
      public function get amIController() : Boolean
      {
         return var_1968;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1968 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1975 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1973 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1765 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1384 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1971;
      }
      
      public function set figure(param1:String) : void
      {
         var_313 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1763;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1291;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1972;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_852 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1973;
      }
      
      public function get realName() : String
      {
         return var_1384;
      }
      
      public function get figure() : String
      {
         return var_313;
      }
      
      public function set webID(param1:int) : void
      {
         var_1966 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_267 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1970 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1967 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_852;
      }
      
      public function get webID() : int
      {
         return var_1966;
      }
      
      public function set groupId(param1:int) : void
      {
         var_998 = param1;
      }
      
      public function get xp() : int
      {
         return var_1974;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1976 = param1;
      }
      
      public function get groupId() : int
      {
         return var_998;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1970;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1291 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1974 = param1;
      }
   }
}
