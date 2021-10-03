package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_276:String = "RWFAM_MOVE";
      
      public static const const_621:String = "RWFUAM_ROTATE";
      
      public static const const_717:String = "RWFAM_PICKUP";
       
      
      private var var_1863:int = 0;
      
      private var var_1862:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1863 = param2;
         var_1862 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1863;
      }
      
      public function get furniCategory() : int
      {
         return var_1862;
      }
   }
}
