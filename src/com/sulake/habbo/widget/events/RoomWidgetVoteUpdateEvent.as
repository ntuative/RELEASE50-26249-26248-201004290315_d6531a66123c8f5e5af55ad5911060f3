package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_130:String = "RWPUE_VOTE_RESULT";
      
      public static const const_120:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1326:int;
      
      private var var_1049:String;
      
      private var var_734:Array;
      
      private var var_1070:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1049 = param2;
         var_1070 = param3;
         var_734 = param4;
         if(var_734 == null)
         {
            var_734 = [];
         }
         var_1326 = param5;
      }
      
      public function get votes() : Array
      {
         return var_734.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1326;
      }
      
      public function get question() : String
      {
         return var_1049;
      }
      
      public function get choices() : Array
      {
         return var_1070.slice();
      }
   }
}
