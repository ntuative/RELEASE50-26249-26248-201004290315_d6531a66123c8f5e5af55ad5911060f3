package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_526;
         param1["bitmap"] = const_546;
         param1["border"] = const_713;
         param1["border_notify"] = const_1158;
         param1["button"] = const_440;
         param1["button_thick"] = const_737;
         param1["button_icon"] = const_1208;
         param1["button_group_left"] = const_531;
         param1["button_group_center"] = const_630;
         param1["button_group_right"] = const_746;
         param1["canvas"] = const_710;
         param1["checkbox"] = const_579;
         param1["closebutton"] = const_887;
         param1["container"] = const_342;
         param1["container_button"] = const_575;
         param1["display_object_wrapper"] = const_514;
         param1["dropmenu"] = const_455;
         param1["dropmenu_item"] = const_417;
         param1["frame"] = const_286;
         param1["frame_notify"] = const_1313;
         param1["header"] = const_638;
         param1["icon"] = const_976;
         param1["itemgrid"] = const_1007;
         param1["itemgrid_horizontal"] = const_466;
         param1["itemgrid_vertical"] = const_654;
         param1["itemlist"] = const_822;
         param1["itemlist_horizontal"] = const_307;
         param1["itemlist_vertical"] = const_341;
         param1["maximizebox"] = const_1220;
         param1["menu"] = const_1350;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_870;
         param1["minimizebox"] = const_1263;
         param1["notify"] = const_1395;
         param1["null"] = const_563;
         param1["password"] = const_590;
         param1["radiobutton"] = const_520;
         param1["region"] = const_429;
         param1["restorebox"] = const_1323;
         param1["scaler"] = const_536;
         param1["scaler_horizontal"] = const_1280;
         param1["scaler_vertical"] = const_1266;
         param1["scrollbar_horizontal"] = const_443;
         param1["scrollbar_vertical"] = const_655;
         param1["scrollbar_slider_button_up"] = const_928;
         param1["scrollbar_slider_button_down"] = const_872;
         param1["scrollbar_slider_button_left"] = const_852;
         param1["scrollbar_slider_button_right"] = const_868;
         param1["scrollbar_slider_bar_horizontal"] = const_879;
         param1["scrollbar_slider_bar_vertical"] = const_899;
         param1["scrollbar_slider_track_horizontal"] = const_985;
         param1["scrollbar_slider_track_vertical"] = const_846;
         param1["scrollable_itemlist"] = const_1295;
         param1["scrollable_itemlist_vertical"] = const_383;
         param1["scrollable_itemlist_horizontal"] = const_1015;
         param1["selector"] = const_560;
         param1["selector_list"] = const_540;
         param1["submenu"] = const_870;
         param1["tab_button"] = const_688;
         param1["tab_container_button"] = const_996;
         param1["tab_context"] = const_485;
         param1["tab_content"] = const_1004;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_642;
         param1["input"] = const_649;
         param1["toolbar"] = const_1405;
         param1["tooltip"] = const_289;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
