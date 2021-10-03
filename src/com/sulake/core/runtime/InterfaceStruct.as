package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_431:uint;
      
      private var var_1067:IUnknown;
      
      private var var_1286:String;
      
      private var var_1068:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1068 = param1;
         var_1286 = getQualifiedClassName(var_1068);
         var_1067 = param2;
         var_431 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1068;
      }
      
      public function get disposed() : Boolean
      {
         return var_1067 == null;
      }
      
      public function get references() : uint
      {
         return var_431;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_431) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1067;
      }
      
      public function get iis() : String
      {
         return var_1286;
      }
      
      public function reserve() : uint
      {
         return ++var_431;
      }
      
      public function dispose() : void
      {
         var_1068 = null;
         var_1286 = null;
         var_1067 = null;
         var_431 = 0;
      }
   }
}
