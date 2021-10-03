package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1931:int;
      
      private var var_1936:String;
      
      private var var_1937:int;
      
      private var var_1934:int;
      
      private var var_654:Boolean;
      
      private var var_1930:Boolean;
      
      private var var_389:int;
      
      private var var_1166:String;
      
      private var var_1938:int;
      
      private var var_1287:int;
      
      private var _ownerName:String;
      
      private var var_742:String;
      
      private var var_1932:int;
      
      private var var_1933:RoomThumbnailData;
      
      private var var_1935:Boolean;
      
      private var var_643:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_643 = new Array();
         super();
         var_389 = param1.readInteger();
         var_654 = param1.readBoolean();
         var_742 = param1.readString();
         _ownerName = param1.readString();
         var_1938 = param1.readInteger();
         var_1931 = param1.readInteger();
         var_1932 = param1.readInteger();
         var_1166 = param1.readString();
         var_1937 = param1.readInteger();
         var_1935 = param1.readBoolean();
         var_1934 = param1.readInteger();
         var_1287 = param1.readInteger();
         var_1936 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_643.push(_loc4_);
            _loc3_++;
         }
         var_1933 = new RoomThumbnailData(param1);
         var_1930 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1932;
      }
      
      public function get roomName() : String
      {
         return var_742;
      }
      
      public function get userCount() : int
      {
         return var_1931;
      }
      
      public function get score() : int
      {
         return var_1934;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1936;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1935;
      }
      
      public function get tags() : Array
      {
         return var_643;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1930;
      }
      
      public function get event() : Boolean
      {
         return var_654;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_643 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1287;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1937;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1933;
      }
      
      public function get doorMode() : int
      {
         return var_1938;
      }
      
      public function get flatId() : int
      {
         return var_389;
      }
      
      public function get description() : String
      {
         return var_1166;
      }
   }
}
