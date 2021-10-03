package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_837:String = "inventory_badges";
      
      public static const const_1264:String = "inventory_clothes";
      
      public static const const_1307:String = "inventory_furniture";
      
      public static const const_556:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1000:String = "inventory_effects";
       
      
      private var var_1758:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_556);
         var_1758 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1758;
      }
   }
}
