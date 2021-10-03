package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class SendRoomInviteMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_1564:String;
      
      private var var_827:Array;
      
      public function SendRoomInviteMessageComposer(param1:String)
      {
         var_827 = new Array();
         super();
         this.var_1564 = param1;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this.var_827.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_827.length)
         {
            _loc1_.push(this.var_827[_loc2_]);
            _loc2_++;
         }
         _loc1_.push(this.var_1564);
         return _loc1_;
      }
      
      public function dispose() : void
      {
         this.var_827 = null;
      }
      
      public function addInvitedFriend(param1:int) : void
      {
         this.var_827.push(param1);
      }
   }
}
