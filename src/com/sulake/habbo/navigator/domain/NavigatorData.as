package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1418:int = 10;
       
      
      private var var_1426:NavigatorSettingsMessageParser;
      
      private var var_1146:int;
      
      private var var_1652:int;
      
      private var var_1648:Boolean;
      
      private var var_984:Array;
      
      private var var_788:Dictionary;
      
      private var var_983:Array;
      
      private var var_2306:int;
      
      private var var_1650:int;
      
      private var var_1651:int;
      
      private var var_1649:int;
      
      private var var_563:PublicRoomShortData;
      
      private var var_397:RoomEventData;
      
      private var var_125:MsgWithRequestId;
      
      private var var_1647:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1653:Boolean;
      
      private var var_190:GuestRoomData;
      
      private var var_664:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_984 = new Array();
         var_983 = new Array();
         var_788 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1652;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1653;
      }
      
      public function startLoading() : void
      {
         this.var_664 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1653 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_397 != null)
         {
            var_397.dispose();
         }
         var_397 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_125 != null && var_125 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_125 != null && var_125 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_125 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_190;
      }
      
      public function get allCategories() : Array
      {
         return var_984;
      }
      
      public function onRoomExit() : void
      {
         if(var_397 != null)
         {
            var_397.dispose();
            var_397 = null;
         }
         if(var_563 != null)
         {
            var_563.dispose();
            var_563 = null;
         }
         if(var_190 != null)
         {
            var_190.dispose();
            var_190 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_664 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1426;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_664 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_563 = null;
         var_190 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_563 = param1.publicSpace;
            var_397 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2306 = param1.limit;
         this.var_1146 = param1.favouriteRoomIds.length;
         this.var_788 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_788[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_125 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_563;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1648;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_664 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1651 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_190 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_664;
      }
      
      public function get visibleCategories() : Array
      {
         return var_983;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_984 = param1;
         var_983 = new Array();
         for each(_loc2_ in var_984)
         {
            if(_loc2_.visible)
            {
               var_983.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1650;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1649;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1426 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_125 == null)
         {
            return;
         }
         var_125.dispose();
         var_125 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_397;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_788[param1] = !!param2 ? "yes" : null;
         var_1146 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_125 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1651;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_125 != null && var_125 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1648 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1650 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1647 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_190 != null)
         {
            var_190.dispose();
         }
         var_190 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_190 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1426.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1146 >= var_2306;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1649 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1647;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_190 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1652 = param1;
      }
   }
}
