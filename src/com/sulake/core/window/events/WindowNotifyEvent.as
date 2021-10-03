package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1193:String = "WN_CREATED";
      
      public static const const_911:String = "WN_DISABLE";
      
      public static const const_831:String = "WN_DEACTIVATED";
      
      public static const const_1025:String = "WN_OPENED";
      
      public static const const_805:String = "WN_CLOSED";
      
      public static const const_806:String = "WN_DESTROY";
      
      public static const const_1459:String = "WN_ARRANGED";
      
      public static const const_431:String = "WN_PARENT_RESIZED";
      
      public static const const_932:String = "WN_ENABLE";
      
      public static const const_988:String = "WN_RELOCATE";
      
      public static const const_1013:String = "WN_FOCUS";
      
      public static const const_914:String = "WN_PARENT_RELOCATED";
      
      public static const const_428:String = "WN_PARAM_UPDATED";
      
      public static const const_677:String = "WN_PARENT_ACTIVATED";
      
      public static const const_186:String = "WN_RESIZED";
      
      public static const const_874:String = "WN_CLOSE";
      
      public static const const_967:String = "WN_PARENT_REMOVED";
      
      public static const const_241:String = "WN_CHILD_RELOCATED";
      
      public static const const_547:String = "WN_ENABLED";
      
      public static const const_273:String = "WN_CHILD_RESIZED";
      
      public static const const_925:String = "WN_MINIMIZED";
      
      public static const const_574:String = "WN_DISABLED";
      
      public static const const_218:String = "WN_CHILD_ACTIVATED";
      
      public static const const_361:String = "WN_STATE_UPDATED";
      
      public static const const_695:String = "WN_UNSELECTED";
      
      public static const const_452:String = "WN_STYLE_UPDATED";
      
      public static const const_1626:String = "WN_UPDATE";
      
      public static const const_478:String = "WN_PARENT_ADDED";
      
      public static const const_687:String = "WN_RESIZE";
      
      public static const const_728:String = "WN_CHILD_REMOVED";
      
      public static const const_1564:String = "";
      
      public static const const_920:String = "WN_RESTORED";
      
      public static const const_344:String = "WN_SELECTED";
      
      public static const const_864:String = "WN_MINIMIZE";
      
      public static const const_880:String = "WN_FOCUSED";
      
      public static const const_1354:String = "WN_LOCK";
      
      public static const const_311:String = "WN_CHILD_ADDED";
      
      public static const const_902:String = "WN_UNFOCUSED";
      
      public static const const_421:String = "WN_RELOCATED";
      
      public static const const_884:String = "WN_DEACTIVATE";
      
      public static const const_1224:String = "WN_CRETAE";
      
      public static const const_834:String = "WN_RESTORE";
      
      public static const const_314:String = "WN_ACTVATED";
      
      public static const const_1244:String = "WN_LOCKED";
      
      public static const const_456:String = "WN_SELECT";
      
      public static const const_973:String = "WN_MAXIMIZE";
      
      public static const const_867:String = "WN_OPEN";
      
      public static const const_719:String = "WN_UNSELECT";
      
      public static const const_1571:String = "WN_ARRANGE";
      
      public static const const_1311:String = "WN_UNLOCKED";
      
      public static const const_1537:String = "WN_UPDATED";
      
      public static const const_1009:String = "WN_ACTIVATE";
      
      public static const const_1268:String = "WN_UNLOCK";
      
      public static const const_1029:String = "WN_MAXIMIZED";
      
      public static const const_958:String = "WN_DESTROYED";
      
      public static const const_1005:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1616,cancelable);
      }
   }
}
