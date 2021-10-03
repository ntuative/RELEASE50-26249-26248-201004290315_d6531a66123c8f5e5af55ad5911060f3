package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      private var var_216:int = 0;
      
      private var var_2104:int = 0;
      
      private var var_2154:Number = 0;
      
      private var var_2155:Number = 0;
      
      private var var_2156:Number = 0;
      
      private var var_2153:Number = 0;
      
      private var var_2157:Boolean = false;
      
      private var var_84:Number = 0;
      
      private var _id:int = 0;
      
      private var var_197:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_197 = [];
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_85 = param4;
         var_2153 = param5;
         var_216 = param6;
         var_2104 = param7;
         var_2154 = param8;
         var_2155 = param9;
         var_2156 = param10;
         var_2157 = param11;
         var_197 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get dir() : int
      {
         return var_216;
      }
      
      public function get localZ() : Number
      {
         return var_2153;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2157;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_2104;
      }
      
      public function get targetX() : Number
      {
         return var_2154;
      }
      
      public function get targetY() : Number
      {
         return var_2155;
      }
      
      public function get targetZ() : Number
      {
         return var_2156;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get actions() : Array
      {
         return var_197.slice();
      }
   }
}
