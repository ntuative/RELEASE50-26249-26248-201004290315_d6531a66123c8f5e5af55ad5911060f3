package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1732:String;
      
      private var var_389:int;
      
      private var var_2105:String;
      
      private var var_2106:String;
      
      private var var_2107:int;
      
      private var var_2108:String;
      
      private var var_2109:int;
      
      private var var_643:Array;
      
      private var var_1088:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_643 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1088 = false;
            return;
         }
         this.var_1088 = true;
         var_2107 = int(_loc2_);
         var_2105 = param1.readString();
         var_389 = int(param1.readString());
         var_2109 = param1.readInteger();
         var_1732 = param1.readString();
         var_2106 = param1.readString();
         var_2108 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_643.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2109;
      }
      
      public function get eventName() : String
      {
         return var_1732;
      }
      
      public function get eventDescription() : String
      {
         return var_2106;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2105;
      }
      
      public function get tags() : Array
      {
         return var_643;
      }
      
      public function get creationTime() : String
      {
         return var_2108;
      }
      
      public function get exists() : Boolean
      {
         return var_1088;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2107;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_643 = null;
      }
      
      public function get flatId() : int
      {
         return var_389;
      }
   }
}
