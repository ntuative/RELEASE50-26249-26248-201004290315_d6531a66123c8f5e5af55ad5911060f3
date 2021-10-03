package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_210:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1881:Boolean = false;
      
      private var var_1884:int = 0;
      
      private var var_1882:int = 0;
      
      private var var_1885:int;
      
      private var var_1883:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_210,param6,param7);
         var_1883 = param1;
         var_1882 = param2;
         var_1884 = param3;
         var_1881 = param4;
         var_1885 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1885;
      }
      
      public function get pastPeriods() : int
      {
         return var_1884;
      }
      
      public function get periodsLeft() : int
      {
         return var_1882;
      }
      
      public function get daysLeft() : int
      {
         return var_1883;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1881;
      }
   }
}
