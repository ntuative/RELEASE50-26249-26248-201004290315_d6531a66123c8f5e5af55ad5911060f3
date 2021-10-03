package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_410:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_297:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_796:int;
      
      private var var_273:Boolean;
      
      private var var_2215:Boolean;
      
      private var var_1462:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_796 = param2;
         var_2215 = param3;
         var_273 = param4;
         var_1462 = param5;
      }
      
      public function get position() : int
      {
         return var_796;
      }
      
      public function get isActive() : Boolean
      {
         return var_273;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1462;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2215;
      }
   }
}
