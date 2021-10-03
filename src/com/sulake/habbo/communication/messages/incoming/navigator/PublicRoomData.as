package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2004:int;
      
      private var var_2006:String;
      
      private var var_1992:int;
      
      private var _disposed:Boolean;
      
      private var var_2005:int;
      
      private var var_1993:String;
      
      private var var_1225:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1993 = param1.readString();
         var_2004 = param1.readInteger();
         var_1992 = param1.readInteger();
         var_2006 = param1.readString();
         var_2005 = param1.readInteger();
         var_1225 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2005;
      }
      
      public function get worldId() : int
      {
         return var_1992;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1993;
      }
      
      public function get unitPort() : int
      {
         return var_2004;
      }
      
      public function get castLibs() : String
      {
         return var_2006;
      }
      
      public function get nodeId() : int
      {
         return var_1225;
      }
   }
}
