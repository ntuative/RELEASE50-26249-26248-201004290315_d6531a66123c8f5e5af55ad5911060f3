package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_875:LegacyWallGeometry = null;
      
      private var var_607:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_608:TileHeightMap = null;
      
      private var var_2032:String = null;
      
      private var _roomId:int = 0;
      
      private var var_609:SelectedRoomObjectData = null;
      
      private var var_876:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_875 = new LegacyWallGeometry();
         var_876 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_607 != null)
         {
            var_607.dispose();
         }
         var_607 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_608 != null)
         {
            var_608.dispose();
         }
         var_608 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2032 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_875;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_609;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_876;
      }
      
      public function dispose() : void
      {
         if(var_608 != null)
         {
            var_608.dispose();
            var_608 = null;
         }
         if(var_875 != null)
         {
            var_875.dispose();
            var_875 = null;
         }
         if(var_876 != null)
         {
            var_876.dispose();
            var_876 = null;
         }
         if(var_607 != null)
         {
            var_607.dispose();
            var_607 = null;
         }
         if(var_609 != null)
         {
            var_609.dispose();
            var_609 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_608;
      }
      
      public function get worldType() : String
      {
         return var_2032;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_609 != null)
         {
            var_609.dispose();
         }
         var_609 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_607;
      }
   }
}
