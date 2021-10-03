package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_446:int = 0;
      
      public static const const_115:int = 2;
      
      public static const const_171:int = 1;
      
      public static const const_629:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2169:Boolean;
      
      private var var_2168:Boolean;
      
      private var var_2255:int;
      
      private var var_2171:Array;
      
      private var var_2256:int;
      
      private var var_1930:Boolean;
      
      private var var_1166:String;
      
      private var var_2170:int;
      
      private var var_1938:int;
      
      private var var_1287:int;
      
      private var _roomId:int;
      
      private var var_643:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2170;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2170 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_643;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1930;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2256 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2171 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_643 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2169;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2168;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2255;
      }
      
      public function get categoryId() : int
      {
         return var_1287;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1930 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2256;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2171;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2169 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2168 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2255 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1938;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1287 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1166 = param1;
      }
      
      public function get description() : String
      {
         return var_1166;
      }
   }
}
