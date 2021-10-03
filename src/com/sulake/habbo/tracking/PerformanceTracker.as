package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1508:GarbageMonitor = null;
      
      private var var_1231:int = 0;
      
      private var var_1269:Boolean = false;
      
      private var var_1865:String = "";
      
      private var var_1507:String = "";
      
      private var var_358:Number = 0;
      
      private var var_1232:int = 10;
      
      private var var_2333:Array;
      
      private var var_650:int = 0;
      
      private var var_1230:int = 60;
      
      private var var_1037:int = 0;
      
      private var var_1038:int = 0;
      
      private var var_1953:String = "";
      
      private var var_1866:Number = 0;
      
      private var var_1229:int = 1000;
      
      private var var_1868:Boolean = true;
      
      private var var_1869:Number = 0.15;
      
      private var var_150:IHabboConfigurationManager = null;
      
      private var var_1867:String = "";
      
      private var var_1233:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2333 = [];
         super();
         var_1507 = Capabilities.version;
         var_1865 = Capabilities.os;
         var_1269 = Capabilities.isDebugger;
         var_1867 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1508 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1231 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1508.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1508.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_358;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1230 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1507;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1038;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1229)
         {
            ++var_1037;
            _loc3_ = true;
         }
         else
         {
            ++var_650;
            if(var_650 <= 1)
            {
               var_358 = param1;
            }
            else
            {
               _loc4_ = Number(var_650);
               var_358 = var_358 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1231 > var_1230 * 1000 && var_1233 < var_1232)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_358);
            _loc5_ = true;
            if(var_1868 && var_1233 > 0)
            {
               _loc6_ = differenceInPercents(var_1866,var_358);
               if(_loc6_ < var_1869)
               {
                  _loc5_ = false;
               }
            }
            var_1231 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1866 = var_358;
               if(sendReport())
               {
                  ++var_1233;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1232 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1229 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1867,var_1507,var_1865,var_1953,var_1269,_loc4_,_loc3_,var_1038,var_358,var_1037);
            _connection.send(_loc1_);
            var_1038 = 0;
            var_358 = 0;
            var_650 = 0;
            var_1037 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_150 = param1;
         var_1230 = int(var_150.getKey("performancetest.interval","60"));
         var_1229 = int(var_150.getKey("performancetest.slowupdatelimit","1000"));
         var_1232 = int(var_150.getKey("performancetest.reportlimit","10"));
         var_1869 = Number(var_150.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1868 = Boolean(int(var_150.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
