package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1018:String;
      
      private var var_1943:int;
      
      private var var_2021:int;
      
      private var var_1543:int;
      
      private var var_2019:int;
      
      private var _category:int;
      
      private var var_2400:int;
      
      private var var_2025:int;
      
      private var var_2023:int;
      
      private var var_2022:int;
      
      private var var_2024:int;
      
      private var var_2020:Boolean;
      
      private var var_1395:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1943 = param1;
         var_1018 = param2;
         var_2021 = param3;
         var_2022 = param4;
         _category = param5;
         var_1395 = param6;
         var_1543 = param7;
         var_2023 = param8;
         var_2025 = param9;
         var_2024 = param10;
         var_2019 = param11;
         var_2020 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2022;
      }
      
      public function get extra() : int
      {
         return var_1543;
      }
      
      public function get stuffData() : String
      {
         return var_1395;
      }
      
      public function get groupable() : Boolean
      {
         return var_2020;
      }
      
      public function get creationMonth() : int
      {
         return var_2024;
      }
      
      public function get roomItemID() : int
      {
         return var_2021;
      }
      
      public function get itemType() : String
      {
         return var_1018;
      }
      
      public function get itemID() : int
      {
         return var_1943;
      }
      
      public function get songID() : int
      {
         return var_1543;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2023;
      }
      
      public function get creationYear() : int
      {
         return var_2019;
      }
      
      public function get creationDay() : int
      {
         return var_2025;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
