package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1961:String;
      
      private var var_313:String;
      
      private var var_635:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_313 = param1;
         var_635 = param2;
         var_1961 = param3;
      }
      
      public function get race() : String
      {
         return var_1961;
      }
      
      public function get figure() : String
      {
         return var_313;
      }
      
      public function get gender() : String
      {
         return var_635;
      }
   }
}
