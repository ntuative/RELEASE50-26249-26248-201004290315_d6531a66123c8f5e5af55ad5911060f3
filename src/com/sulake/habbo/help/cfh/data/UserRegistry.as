package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1106:int = 80;
       
      
      private var var_514:Map;
      
      private var var_742:String = "";
      
      private var var_1300:Array;
      
      public function UserRegistry()
      {
         var_514 = new Map();
         var_1300 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_514.getValue(var_1300.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_742;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_514.getValue(param1) != null)
         {
            var_514.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_742);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_742 == "")
         {
            var_1300.push(param1);
         }
         var_514.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_514;
      }
      
      public function unregisterRoom() : void
      {
         var_742 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_514.length > const_1106)
         {
            _loc1_ = var_514.getKey(0);
            var_514.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_742 = param1;
         if(var_742 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
