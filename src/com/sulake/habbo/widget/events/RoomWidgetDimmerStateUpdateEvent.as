package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_65:String = "RWDSUE_DIMMER_STATE";
       
      
      private var var_1097:int;
      
      private var _color:uint;
      
      private var var_1098:int;
      
      private var var_1661:int;
      
      private var var_33:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_65,param6,param7);
         var_33 = param1;
         var_1661 = param2;
         var_1097 = param3;
         _color = param4;
         var_1098 = param5;
      }
      
      public function get brightness() : uint
      {
         return var_1098;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1097;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get presetId() : int
      {
         return var_1661;
      }
   }
}
