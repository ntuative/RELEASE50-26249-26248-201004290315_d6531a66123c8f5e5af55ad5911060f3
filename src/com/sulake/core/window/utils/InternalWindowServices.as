package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2307:uint;
      
      private var var_793:IWindowToolTipAgentService;
      
      private var var_794:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_792:IWindowFocusManagerService;
      
      private var var_795:IWindowMouseListenerService;
      
      private var var_791:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2307 = 0;
         var_121 = param2;
         _windowContext = param1;
         var_791 = new WindowMouseDragger(param2);
         var_794 = new WindowMouseScaler(param2);
         var_795 = new WindowMouseListener(param2);
         var_792 = new FocusManager(param2);
         var_793 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_794;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_792;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_793;
      }
      
      public function dispose() : void
      {
         if(var_791 != null)
         {
            var_791.dispose();
            var_791 = null;
         }
         if(var_794 != null)
         {
            var_794.dispose();
            var_794 = null;
         }
         if(var_795 != null)
         {
            var_795.dispose();
            var_795 = null;
         }
         if(var_792 != null)
         {
            var_792.dispose();
            var_792 = null;
         }
         if(var_793 != null)
         {
            var_793.dispose();
            var_793 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_795;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_791;
      }
   }
}
