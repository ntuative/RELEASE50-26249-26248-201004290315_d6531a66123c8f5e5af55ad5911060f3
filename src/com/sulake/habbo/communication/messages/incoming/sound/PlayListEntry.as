package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2000:int;
      
      private var var_1998:int = 0;
      
      private var var_2001:String;
      
      private var var_2002:int;
      
      private var var_1999:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2000 = param1;
         var_2002 = param2;
         var_1999 = param3;
         var_2001 = param4;
      }
      
      public function get length() : int
      {
         return var_2002;
      }
      
      public function get name() : String
      {
         return var_1999;
      }
      
      public function get creator() : String
      {
         return var_2001;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1998;
      }
      
      public function get id() : int
      {
         return var_2000;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1998 = param1;
      }
   }
}
