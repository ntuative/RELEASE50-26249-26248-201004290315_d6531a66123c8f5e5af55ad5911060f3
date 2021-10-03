package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1707:int;
      
      private var var_1895:Boolean;
      
      private var var_2000:int;
      
      private var var_1395:String;
      
      private var var_2237:Boolean = false;
      
      private var var_1896:int;
      
      private var var_459:int;
      
      private var var_1018:String;
      
      private var var_1602:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1296:int;
      
      private var var_1899:Boolean;
      
      private var var_2236:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1707 = param1;
         var_1018 = param2;
         _objId = param3;
         var_1296 = param4;
         var_1395 = param5;
         var_1895 = param6;
         var_1899 = param7;
         var_1896 = param8;
         var_1602 = param9;
         var_2000 = param10;
         var_459 = -1;
      }
      
      public function get songId() : int
      {
         return var_2000;
      }
      
      public function get iconCallbackId() : int
      {
         return var_459;
      }
      
      public function get expiryTime() : int
      {
         return var_1896;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2236 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2237 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_459 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1899;
      }
      
      public function get slotId() : String
      {
         return var_1602;
      }
      
      public function get classId() : int
      {
         return var_1296;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1895;
      }
      
      public function get stuffData() : String
      {
         return var_1395;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1707;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2237;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2236;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1018;
      }
   }
}
