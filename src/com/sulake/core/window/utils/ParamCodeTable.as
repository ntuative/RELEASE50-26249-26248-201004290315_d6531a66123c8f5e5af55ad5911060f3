package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_132;
         param1["bound_to_parent_rect"] = const_91;
         param1["child_window"] = const_993;
         param1["embedded_controller"] = const_295;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_702;
         param1["mouse_dragging_target"] = const_198;
         param1["mouse_dragging_trigger"] = const_293;
         param1["mouse_scaling_target"] = const_248;
         param1["mouse_scaling_trigger"] = const_405;
         param1["horizontal_mouse_scaling_trigger"] = const_207;
         param1["vertical_mouse_scaling_trigger"] = const_235;
         param1["observe_parent_input_events"] = const_810;
         param1["optimize_region_to_layout_size"] = const_422;
         param1["parent_window"] = const_936;
         param1["relative_horizontal_scale_center"] = const_161;
         param1["relative_horizontal_scale_fixed"] = const_127;
         param1["relative_horizontal_scale_move"] = const_346;
         param1["relative_horizontal_scale_strech"] = const_280;
         param1["relative_scale_center"] = const_968;
         param1["relative_scale_fixed"] = const_591;
         param1["relative_scale_move"] = const_906;
         param1["relative_scale_strech"] = const_1014;
         param1["relative_vertical_scale_center"] = const_156;
         param1["relative_vertical_scale_fixed"] = const_133;
         param1["relative_vertical_scale_move"] = const_315;
         param1["relative_vertical_scale_strech"] = const_255;
         param1["on_resize_align_left"] = const_532;
         param1["on_resize_align_right"] = const_444;
         param1["on_resize_align_center"] = const_436;
         param1["on_resize_align_top"] = const_703;
         param1["on_resize_align_bottom"] = const_434;
         param1["on_resize_align_middle"] = const_391;
         param1["on_accommodate_align_left"] = const_861;
         param1["on_accommodate_align_right"] = const_374;
         param1["on_accommodate_align_center"] = const_592;
         param1["on_accommodate_align_top"] = const_873;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_674;
         param1["route_input_events_to_parent"] = const_373;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_855;
         param1["scalable_with_mouse"] = const_952;
         param1["reflect_horizontal_resize_to_parent"] = const_419;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_253;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
