package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1364:String = "F";
      
      public static const const_929:String = "M";
       
      
      private var var_84:Number = 0;
      
      private var var_313:String = "";
      
      private var var_2027:int = 0;
      
      private var var_2026:String = "";
      
      private var var_2030:int = 0;
      
      private var var_1974:int = 0;
      
      private var var_2029:String = "";
      
      private var var_634:String = "";
      
      private var _id:int = 0;
      
      private var var_200:Boolean = false;
      
      private var var_216:int = 0;
      
      private var var_2028:String = "";
      
      private var _name:String = "";
      
      private var var_1966:int = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_216;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_200)
         {
            var_216 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_200)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2027;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_200)
         {
            var_2030 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2028;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_200)
         {
            var_2029 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_200)
         {
            var_2028 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_200)
         {
            var_1974 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_200)
         {
            var_313 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_200)
         {
            var_2027 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_200)
         {
            var_634 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2030;
      }
      
      public function get groupID() : String
      {
         return var_2029;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_200)
         {
            var_1966 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_200)
         {
            var_2026 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_200 = true;
      }
      
      public function get sex() : String
      {
         return var_634;
      }
      
      public function get figure() : String
      {
         return var_313;
      }
      
      public function get webID() : int
      {
         return var_1966;
      }
      
      public function get custom() : String
      {
         return var_2026;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_200)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_200)
         {
            var_85 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_200)
         {
            var_84 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1974;
      }
   }
}
