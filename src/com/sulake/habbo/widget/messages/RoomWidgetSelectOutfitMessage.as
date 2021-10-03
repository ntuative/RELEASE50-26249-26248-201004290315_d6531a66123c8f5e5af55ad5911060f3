package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_854:String = "select_outfit";
       
      
      private var var_2114:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_854);
         var_2114 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2114;
      }
   }
}
