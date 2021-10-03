package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_358:Number = 0.5;
      
      private static const const_801:int = 3;
      
      private static const const_1139:Number = 1;
       
      
      private var var_2274:Boolean = false;
      
      private var var_2275:Boolean = false;
      
      private var var_1111:int = 0;
      
      private var var_289:Vector3d = null;
      
      private var var_2270:int = 0;
      
      private var var_2269:int = 0;
      
      private var var_2278:Boolean = false;
      
      private var var_2273:int = -2;
      
      private var var_2276:Boolean = false;
      
      private var var_2272:int = 0;
      
      private var var_2271:int = -1;
      
      private var var_454:Vector3d = null;
      
      private var var_2277:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2270;
      }
      
      public function get targetId() : int
      {
         return var_2271;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2272 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2270 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2274 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2271 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2275 = param1;
      }
      
      public function dispose() : void
      {
         var_454 = null;
         var_289 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_454 == null)
         {
            var_454 = new Vector3d();
         }
         var_454.assign(param1);
         var_1111 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2273;
      }
      
      public function get screenHt() : int
      {
         return var_2277;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2269 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_289;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2277 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2272;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2274;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2275;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_454 != null && var_289 != null)
         {
            ++var_1111;
            _loc2_ = Vector3d.dif(var_454,var_289);
            if(_loc2_.length <= const_358)
            {
               var_289 = var_454;
               var_454 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_358 * (const_801 + 1))
               {
                  _loc2_.mul(const_358);
               }
               else if(var_1111 <= const_801)
               {
                  _loc2_.mul(const_358);
               }
               else
               {
                  _loc2_.mul(const_1139);
               }
               var_289 = Vector3d.sum(var_289,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2278 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2269;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2276 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2273 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_289 != null)
         {
            return;
         }
         var_289 = new Vector3d();
         var_289.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2278;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2276;
      }
   }
}
