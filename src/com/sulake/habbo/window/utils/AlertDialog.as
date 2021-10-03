package com.sulake.habbo.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.utils.INotify;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboAlertDialogFlag;
   
   public class AlertDialog implements IAlertDialog, INotify
   {
      
      private static const const_1099:String = "_alert_button_list";
      
      private static const const_785:String = "_alert_button_cancel";
      
      private static const const_745:String = "_alert_button_ok";
      
      private static const const_1339:String = "_alert_text_summary";
      
      private static var var_650:uint = 0;
      
      private static const const_786:String = "_alert_button_custom";
       
      
      protected var _disposed:Boolean = false;
      
      protected var _window:IFrameWindow;
      
      protected var _title:String = "";
      
      protected var var_185:Function = null;
      
      protected var var_1288:String = "";
      
      public function AlertDialog(param1:IHabboWindowManager, param2:XML, param3:String, param4:String, param5:uint, param6:Function)
      {
         var _loc8_:* = null;
         super();
         ++var_650;
         _window = param1.buildFromXML(param2,2) as IFrameWindow;
         if(param5 == HabboAlertDialogFlag.const_43)
         {
            param5 = 0 | 0 | 0;
         }
         var _loc7_:IItemListWindow = _window.findChildByName(const_1099) as IItemListWindow;
         if(_loc7_)
         {
            if(!(param5 & 0))
            {
               _loc8_ = _loc7_.getListItemByName(const_745);
               _loc8_.dispose();
            }
            if(!(param5 & 0))
            {
               _loc8_ = _loc7_.getListItemByName(const_785);
               _loc8_.dispose();
            }
            if(!(param5 & 0))
            {
               _loc8_ = _loc7_.getListItemByName(const_786);
               _loc8_.dispose();
            }
         }
         _window.procedure = dialogEventProc;
         _window.center();
         this.title = param3;
         this.summary = param4;
         this.callback = param6;
      }
      
      public function set callback(param1:Function) : void
      {
         var_185 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1288 = param1;
         if(_window)
         {
            ITextWindow(_window.findChildByTag("DESCRIPTION")).text = var_1288;
         }
      }
      
      public function setButtonCaption(param1:int, param2:ICaption) : void
      {
      }
      
      public function get callback() : Function
      {
         return var_185;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(_window && true)
            {
               _window.dispose();
               _window = null;
            }
            var_185 = null;
            _disposed = true;
         }
      }
      
      protected function dialogEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case "_alert_button_ok":
                  if(var_185 != null)
                  {
                     var_185(this,new WindowEvent(WindowEvent.const_183,null,null));
                  }
                  break;
               case "header_button_close":
                  if(var_185 != null)
                  {
                     var_185(this,new WindowEvent(WindowEvent.const_625,null,null));
                  }
            }
         }
      }
      
      public function getButtonCaption(param1:int) : ICaption
      {
         var _loc2_:* = null;
         if(!_disposed)
         {
            switch(param1)
            {
               case HabboAlertDialogFlag.const_745:
                  _loc2_ = _window.findChildByName(const_745) as IInteractiveWindow;
                  break;
               case HabboAlertDialogFlag.const_785:
                  _loc2_ = _window.findChildByName(const_785) as IInteractiveWindow;
                  break;
               case HabboAlertDialogFlag.const_786:
                  _loc2_ = _window.findChildByName(const_786) as IInteractiveWindow;
            }
         }
         return !!_loc2_ ? new AlertDialogCaption(_loc2_.caption,_loc2_.toolTipCaption,_loc2_.visible) : null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get summary() : String
      {
         return var_1288;
      }
      
      public function set title(param1:String) : void
      {
         _title = param1;
         if(_window)
         {
            _window.caption = _title;
         }
      }
      
      public function get title() : String
      {
         return _title;
      }
   }
}