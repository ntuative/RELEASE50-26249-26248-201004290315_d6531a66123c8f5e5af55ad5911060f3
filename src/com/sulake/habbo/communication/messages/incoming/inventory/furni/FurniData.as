package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1395:String;
      
      private var var_1018:String;
      
      private var var_1898:Boolean;
      
      private var var_1543:int;
      
      private var var_1707:int;
      
      private var var_1897:Boolean;
      
      private var var_1602:String = "";
      
      private var var_1895:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1296:int;
      
      private var var_1899:Boolean;
      
      private var var_2000:int = -1;
      
      private var var_1896:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1707 = param1;
         var_1018 = param2;
         _objId = param3;
         var_1296 = param4;
         _category = param5;
         var_1395 = param6;
         var_1898 = param7;
         var_1895 = param8;
         var_1899 = param9;
         var_1897 = param10;
         var_1896 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1602;
      }
      
      public function get extra() : int
      {
         return var_1543;
      }
      
      public function get classId() : int
      {
         return var_1296;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1897;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1898;
      }
      
      public function get stripId() : int
      {
         return var_1707;
      }
      
      public function get stuffData() : String
      {
         return var_1395;
      }
      
      public function get songId() : int
      {
         return var_2000;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1602 = param1;
         var_1543 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1018;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1896;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1899;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1895;
      }
   }
}
