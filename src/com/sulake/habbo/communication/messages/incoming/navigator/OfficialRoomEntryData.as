package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1227:int = 4;
      
      public static const const_635:int = 3;
      
      public static const const_529:int = 2;
      
      public static const const_956:int = 1;
       
      
      private var var_2059:String;
      
      private var _disposed:Boolean;
      
      private var var_1931:int;
      
      private var var_2057:Boolean;
      
      private var var_810:String;
      
      private var var_883:PublicRoomData;
      
      private var var_2058:int;
      
      private var _index:int;
      
      private var var_2060:String;
      
      private var _type:int;
      
      private var var_1699:String;
      
      private var var_882:GuestRoomData;
      
      private var var_2061:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2059 = param1.readString();
         var_2061 = param1.readString();
         var_2057 = param1.readInteger() == 1;
         var_2060 = param1.readString();
         var_810 = param1.readString();
         var_2058 = param1.readInteger();
         var_1931 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_956)
         {
            var_1699 = param1.readString();
         }
         else if(_type == const_635)
         {
            var_883 = new PublicRoomData(param1);
         }
         else if(_type == const_529)
         {
            var_882 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2058;
      }
      
      public function get popupCaption() : String
      {
         return var_2059;
      }
      
      public function get userCount() : int
      {
         return var_1931;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2057;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_956)
         {
            return 0;
         }
         if(this.type == const_529)
         {
            return this.var_882.maxUserCount;
         }
         if(this.type == const_635)
         {
            return this.var_883.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2061;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_882 != null)
         {
            this.var_882.dispose();
            this.var_882 = null;
         }
         if(this.var_883 != null)
         {
            this.var_883.dispose();
            this.var_883 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_882;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2060;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_883;
      }
      
      public function get picRef() : String
      {
         return var_810;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1699;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
