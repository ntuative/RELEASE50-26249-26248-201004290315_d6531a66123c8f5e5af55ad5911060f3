package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_130:String = "RSPE_VOTE_RESULT";
      
      public static const const_120:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1326:int = 0;
      
      private var var_1049:String = "";
      
      private var var_734:Array;
      
      private var var_1070:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1070 = [];
         var_734 = [];
         super(param1,param2,param7,param8);
         var_1049 = param3;
         var_1070 = param4;
         var_734 = param5;
         if(var_734 == null)
         {
            var_734 = [];
         }
         var_1326 = param6;
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
