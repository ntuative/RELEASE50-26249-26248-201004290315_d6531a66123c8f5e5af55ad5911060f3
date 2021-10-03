package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1964:Boolean = false;
      
      private var var_1962:Boolean = false;
      
      private var var_2195:String = "";
      
      private var _type:String = "";
      
      private var var_1965:Boolean = false;
      
      private var var_1670:Number = 0;
      
      private var var_2234:Number = 0;
      
      private var var_2235:Number = 0;
      
      private var var_2233:String = "";
      
      private var var_1667:Number = 0;
      
      private var var_1963:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2233 = param2;
         var_2195 = param3;
         var_2234 = param4;
         var_2235 = param5;
         var_1670 = param6;
         var_1667 = param7;
         var_1963 = param8;
         var_1962 = param9;
         var_1965 = param10;
         var_1964 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1963;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1964;
      }
      
      public function get localX() : Number
      {
         return var_1670;
      }
      
      public function get localY() : Number
      {
         return var_1667;
      }
      
      public function get canvasId() : String
      {
         return var_2233;
      }
      
      public function get altKey() : Boolean
      {
         return var_1962;
      }
      
      public function get spriteTag() : String
      {
         return var_2195;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2234;
      }
      
      public function get screenY() : Number
      {
         return var_2235;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1965;
      }
   }
}
