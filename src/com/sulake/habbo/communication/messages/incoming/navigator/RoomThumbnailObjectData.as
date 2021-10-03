package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1608:int;
      
      private var var_1609:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1608;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1608 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1608 = this.var_1608;
         _loc1_.var_1609 = this.var_1609;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1609 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1609;
      }
   }
}
