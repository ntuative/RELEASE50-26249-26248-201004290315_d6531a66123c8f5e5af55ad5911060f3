package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_555:int = 6;
      
      public static const const_213:int = 5;
      
      public static const const_598:int = 2;
      
      public static const const_332:int = 9;
      
      public static const const_328:int = 4;
      
      public static const const_244:int = 2;
      
      public static const const_667:int = 4;
      
      public static const const_227:int = 8;
      
      public static const const_738:int = 7;
      
      public static const const_272:int = 3;
      
      public static const const_336:int = 1;
      
      public static const const_216:int = 5;
      
      public static const const_453:int = 12;
      
      public static const const_345:int = 1;
      
      public static const const_554:int = 11;
      
      public static const const_743:int = 3;
      
      public static const const_1494:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_410:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_410 = new Array();
         var_410.push(new Tab(_navigator,const_336,const_453,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_458));
         var_410.push(new Tab(_navigator,const_244,const_345,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_458));
         var_410.push(new Tab(_navigator,const_328,const_554,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_999));
         var_410.push(new Tab(_navigator,const_272,const_213,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_458));
         var_410.push(new Tab(_navigator,const_216,const_227,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_511));
         setSelectedTab(const_336);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_410)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_410)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_410)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_328;
      }
      
      public function get tabs() : Array
      {
         return var_410;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
