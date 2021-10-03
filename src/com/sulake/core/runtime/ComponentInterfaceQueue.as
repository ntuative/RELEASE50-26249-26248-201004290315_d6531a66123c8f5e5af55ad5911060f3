package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1336:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_908:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1336 = param1;
         var_908 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_908;
      }
      
      public function get identifier() : IID
      {
         return var_1336;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1336 = null;
            while(false)
            {
               var_908.pop();
            }
            var_908 = null;
         }
      }
   }
}
