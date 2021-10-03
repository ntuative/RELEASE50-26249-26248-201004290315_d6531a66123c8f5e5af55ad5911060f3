package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_242:String = "WE_CHILD_RESIZED";
      
      public static const const_1336:String = "WE_CLOSE";
      
      public static const const_1259:String = "WE_DESTROY";
      
      public static const const_111:String = "WE_CHANGE";
      
      public static const const_1403:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1550:String = "WE_PARENT_RESIZE";
      
      public static const const_97:String = "WE_UPDATE";
      
      public static const const_1294:String = "WE_MAXIMIZE";
      
      public static const const_463:String = "WE_DESTROYED";
      
      public static const const_942:String = "WE_UNSELECT";
      
      public static const const_1293:String = "WE_MAXIMIZED";
      
      public static const const_1575:String = "WE_UNLOCKED";
      
      public static const const_392:String = "WE_CHILD_REMOVED";
      
      public static const const_183:String = "WE_OK";
      
      public static const const_47:String = "WE_RESIZED";
      
      public static const const_1186:String = "WE_ACTIVATE";
      
      public static const const_254:String = "WE_ENABLED";
      
      public static const const_442:String = "WE_CHILD_RELOCATED";
      
      public static const const_1391:String = "WE_CREATE";
      
      public static const const_650:String = "WE_SELECT";
      
      public static const const_164:String = "";
      
      public static const const_1570:String = "WE_LOCKED";
      
      public static const const_1596:String = "WE_PARENT_RELOCATE";
      
      public static const const_1615:String = "WE_CHILD_REMOVE";
      
      public static const const_1604:String = "WE_CHILD_RELOCATE";
      
      public static const const_1519:String = "WE_LOCK";
      
      public static const const_229:String = "WE_FOCUSED";
      
      public static const const_711:String = "WE_UNSELECTED";
      
      public static const const_825:String = "WE_DEACTIVATED";
      
      public static const const_1171:String = "WE_MINIMIZED";
      
      public static const const_1527:String = "WE_ARRANGED";
      
      public static const const_1547:String = "WE_UNLOCK";
      
      public static const const_1520:String = "WE_ATTACH";
      
      public static const const_1392:String = "WE_OPEN";
      
      public static const const_1274:String = "WE_RESTORE";
      
      public static const const_1617:String = "WE_PARENT_RELOCATED";
      
      public static const const_1226:String = "WE_RELOCATE";
      
      public static const const_1620:String = "WE_CHILD_RESIZE";
      
      public static const const_1542:String = "WE_ARRANGE";
      
      public static const const_1243:String = "WE_OPENED";
      
      public static const const_1271:String = "WE_CLOSED";
      
      public static const const_1499:String = "WE_DETACHED";
      
      public static const const_1591:String = "WE_UPDATED";
      
      public static const const_1155:String = "WE_UNFOCUSED";
      
      public static const const_406:String = "WE_RELOCATED";
      
      public static const const_1369:String = "WE_DEACTIVATE";
      
      public static const const_226:String = "WE_DISABLED";
      
      public static const const_625:String = "WE_CANCEL";
      
      public static const const_538:String = "WE_ENABLE";
      
      public static const const_1286:String = "WE_ACTIVATED";
      
      public static const const_1257:String = "WE_FOCUS";
      
      public static const const_1572:String = "WE_DETACH";
      
      public static const const_1312:String = "WE_RESTORED";
      
      public static const const_1404:String = "WE_UNFOCUS";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_1376:String = "WE_PARENT_RESIZED";
      
      public static const const_1337:String = "WE_CREATED";
      
      public static const const_1557:String = "WE_ATTACHED";
      
      public static const const_1144:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1616:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1387:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1616 = param3;
         var_1387 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1387;
      }
      
      public function get related() : IWindow
      {
         return var_1616;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1387 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
