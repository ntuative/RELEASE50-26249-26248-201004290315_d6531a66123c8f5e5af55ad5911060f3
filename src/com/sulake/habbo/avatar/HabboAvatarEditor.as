package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.CoreComponent;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.avatar.common.AvatarEditorGridColorItem;
   import com.sulake.habbo.avatar.common.AvatarEditorGridPartItem;
   import com.sulake.habbo.avatar.common.CategoryData;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.common.ISideContentModel;
   import com.sulake.habbo.avatar.enum.AvatarEditorFigureCategory;
   import com.sulake.habbo.avatar.enum.AvatarEditorSideCategory;
   import com.sulake.habbo.avatar.enum.AvatarRenderEvent;
   import com.sulake.habbo.avatar.enum.AvatarType;
   import com.sulake.habbo.avatar.events.AvatarEditorClosedEvent;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.avatar.generic.BodyModel;
   import com.sulake.habbo.avatar.head.HeadModel;
   import com.sulake.habbo.avatar.hotlooks.HotLooksModel;
   import com.sulake.habbo.avatar.legs.LegsModel;
   import com.sulake.habbo.avatar.promo.ClubPromoModel;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPalette;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import com.sulake.habbo.avatar.torso.TorsoModel;
   import com.sulake.habbo.avatar.wardrobe.WardrobeModel;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboAvatarEditor extends Component implements IHabboAvatarEditor
   {
       
      
      private var _view:AvatarEditorView;
      
      private var var_930:AvatarEditorHandler;
      
      private var var_449:Map;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_616:ISessionDataManager;
      
      private var var_584:IAvatarRenderManager;
      
      private var _windowContext:IWindowContainer;
      
      private var var_88:Map;
      
      private var var_1106:int = 0;
      
      private var var_164:Boolean = false;
      
      private var var_538:Dictionary;
      
      private var var_1601:Boolean;
      
      private var _communication:IHabboCommunicationManager;
      
      private const const_1133:int = 2;
      
      private var _catalog:IHabboCatalog;
      
      private var var_11:IHabboInventory;
      
      private var var_635:String;
      
      private var var_150:IHabboConfigurationManager;
      
      private var var_770:IFigureData;
      
      private var _localization:IHabboLocalizationManager;
      
      public function HabboAvatarEditor(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_635 = FigureData.const_83;
         super(param1,param2,param3);
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
         queueInterface(new IIDAvatarRenderManager(),onAvatarRenderManagerReady);
         queueInterface(new IIDHabboInventory(),onInventoryReady);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationReady);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationReady);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationReady);
         queueInterface(new IIDHabboCatalog(),onCatalogReady);
         queueInterface(new IIDSessionDataManager(),onSessionDataManagerReady);
         if(param1 is CoreComponent)
         {
            (param1 as CoreComponent).events.addEventListener(Component.COMPONENT_EVENT_RUNNING,onComponentsRunning);
         }
      }
      
      public function getFigureSetType(param1:String) : ISetType
      {
         if(var_770 == null)
         {
            return null;
         }
         return var_770.getSetType(param1);
      }
      
      public function useClubClothing() : void
      {
         if(var_88 == null)
         {
            return;
         }
         if(var_1601)
         {
            return;
         }
         var_1601 = true;
         update();
      }
      
      public function close() : void
      {
         if(_windowContext != null)
         {
            _windowContext.visible = false;
         }
         else
         {
            this.events.dispatchEvent(new AvatarEditorClosedEvent());
         }
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         _catalog = param2 as IHabboCatalog;
      }
      
      private function onConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var_150 = param2 as IHabboConfigurationManager;
      }
      
      public function get sessionData() : ISessionDataManager
      {
         return var_616;
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in var_88)
         {
            _loc1_.reset();
         }
         for each(_loc2_ in var_449)
         {
            _loc2_.reset();
         }
         if(_view)
         {
            _view.update();
         }
      }
      
      private function init() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!var_164)
         {
            var_538 = new Dictionary();
            var_538["null"] = new FigureData(this);
            var_538["null"] = new FigureData(this);
            _loc1_ = var_538["null"];
            _loc2_ = var_538["null"];
            _loc1_.loadAvatarData("hr-681-35.hd-209-7.ch-878-87.lg-281-70.sh-906-77.ea-1401-77.ha-1010-70.he-1601-62.fa-1204-62.ca-1809-62.wa-2007-62",FigureData.const_83);
            _loc2_.loadAvatarData("hr-681-41.hd-620-9.ch-879-90.lg-700-85.sh-735-68",FigureData.const_90);
            var_88 = new Map();
            var_449 = new Map();
            var_88.add(AvatarEditorFigureCategory.const_975,new BodyModel(this));
            var_88.add(AvatarEditorFigureCategory.const_50,new HeadModel(this));
            var_88.add(AvatarEditorFigureCategory.const_304,new TorsoModel(this));
            var_88.add(AvatarEditorFigureCategory.const_1258,new LegsModel(this));
            var_88.add(AvatarEditorFigureCategory.const_1335,new HotLooksModel(this));
            var_449.add(AvatarEditorSideCategory.WARDROBE,new WardrobeModel(this));
            var_449.add(AvatarEditorSideCategory.const_381,new ClubPromoModel(this));
            var_164 = true;
         }
      }
      
      public function set gender(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_635 == param1)
         {
            return;
         }
         var_635 = param1;
         for each(_loc2_ in var_88)
         {
            _loc2_.reset();
         }
         if(_view != null)
         {
            _view.update();
         }
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var_616 = param2 as ISessionDataManager;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return _localization;
      }
      
      private function orderByClub(param1:AvatarEditorGridPartItem, param2:AvatarEditorGridPartItem) : Number
      {
         var _loc3_:Number = param1.partSet == null ? -1 : Number(Number(param1.partSet.clubLevel));
         var _loc4_:Number = param2.partSet == null ? -1 : Number(Number(param2.partSet.clubLevel));
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.partSet.id < param2.partSet.id)
         {
            return -1;
         }
         if(param1.partSet.id > param2.partSet.id)
         {
            return 1;
         }
         return 0;
      }
      
      public function get catalog() : IHabboCatalog
      {
         return _catalog;
      }
      
      private function onComponentsRunning(param1:Event = null) : void
      {
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function hasInvalidClubItems() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         var _loc1_:Boolean = false;
         for each(_loc2_ in var_88)
         {
            _loc3_ = _loc2_.hasClubItemsOverLevel(clubMemberLevel);
            if(_loc3_)
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(var_150 != null)
         {
            var_150.release(new IIDHabboConfigurationManager());
            var_150 = null;
         }
         if(_communication != null)
         {
            _communication.release(new IIDHabboCommunicationManager());
            _communication = null;
         }
         if(_catalog != null)
         {
            _catalog.release(new IIDHabboCatalog());
            _catalog = null;
         }
         if(_localization != null)
         {
            _localization.release(new IIDHabboLocalizationManager());
            _localization = null;
         }
         if(var_584 != null)
         {
            var_584.release(new IIDAvatarRenderManager());
            var_584 = null;
         }
         if(_windowManager != null)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         if(var_11 != null)
         {
            var_11.release(new IIDHabboInventory());
            var_11 = null;
         }
         if(var_88 != null)
         {
            for each(_loc1_ in var_88)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_88 = null;
         }
         if(var_449 != null)
         {
            for each(_loc2_ in var_449)
            {
               _loc2_.dispose();
               _loc2_ = null;
            }
            var_449 = null;
         }
         if(_windowContext != null)
         {
            _windowContext.dispose();
            _windowContext = null;
         }
         if(_view != null)
         {
            _view.dispose();
            _view = null;
         }
         if(var_930 != null)
         {
            var_930.dispose();
            var_930 = null;
         }
         var_770 = null;
         var_538 = null;
         super.dispose();
      }
      
      public function getDefaultColour(param1:String) : int
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:ISetType = getFigureSetType(param1);
         if(_loc2_ != null)
         {
            _loc3_ = getPalette(_loc2_.paletteID);
            for each(_loc4_ in _loc3_.colors)
            {
               if(_loc4_.isSelectable && var_1106 >= _loc4_.clubLevel)
               {
                  return _loc4_.id;
               }
            }
         }
         return -1;
      }
      
      public function get figureData() : FigureData
      {
         return var_538[var_635];
      }
      
      public function generateDataContent(param1:IAvatarEditorCategoryModel, param2:String) : CategoryData
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:Boolean = false;
         var _loc14_:* = null;
         var _loc15_:* = false;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:Boolean = false;
         var _loc22_:* = null;
         if(!param1)
         {
            return null;
         }
         if(!param2)
         {
            return null;
         }
         var _loc3_:* = [];
         var _loc4_:Array = new Array();
         _loc5_ = 0;
         while(_loc5_ < const_1133)
         {
            _loc4_.push(new Array());
            _loc5_++;
         }
         var _loc9_:Boolean = false;
         _loc8_ = getFigureSetType(param2);
         if(!_loc8_)
         {
            return null;
         }
         switch(param2)
         {
            case FigureData.const_148:
            case FigureData.const_166:
            case FigureData.const_181:
            case FigureData.const_174:
            case FigureData.const_187:
            case FigureData.const_177:
            case FigureData.CHEST_ACCESSORIES:
            case FigureData.const_165:
            case FigureData.const_160:
               _loc9_ = true;
         }
         if(_loc8_ != null)
         {
            _loc10_ = getPalette(_loc8_.paletteID);
            if(!_loc10_)
            {
               return null;
            }
            _loc11_ = figureData.getColourIds(param2);
            if(!_loc11_)
            {
               _loc11_ = new Array();
            }
            _loc12_ = new Array(_loc11_.length);
            _loc13_ = isClubTryoutAllowed() && var_1601;
            for each(_loc14_ in _loc10_.colors)
            {
               if(_loc14_.isSelectable && (_loc13_ || var_1106 >= _loc14_.clubLevel))
               {
                  _loc16_ = 0;
                  while(_loc16_ < const_1133)
                  {
                     _loc17_ = new AvatarEditorGridColorItem(AvatarEditorView.var_1614.clone() as IWindowContainer,param1,_loc14_);
                     _loc4_[_loc16_].push(_loc17_);
                     _loc16_++;
                  }
                  if(param2 != FigureData.FACE)
                  {
                     _loc18_ = 0;
                     while(_loc18_ < _loc11_.length)
                     {
                        if(_loc14_.id == _loc11_[_loc18_])
                        {
                           _loc12_[_loc18_] = _loc14_;
                        }
                        _loc18_++;
                     }
                  }
               }
            }
            if(_loc9_)
            {
               _loc19_ = _assets.getAssetByName("removeSelection") as BitmapDataAsset;
               if(_loc19_)
               {
                  _loc20_ = (_loc19_.content as BitmapData).clone();
                  _loc7_ = new AvatarEditorGridPartItem(AvatarEditorView.var_1386.clone() as IWindowContainer,param1,null,null,false);
                  _loc7_.iconImage = _loc20_;
                  _loc3_.push(_loc7_);
               }
            }
            _loc15_ = param2 != FigureData.FACE;
            for each(_loc6_ in _loc8_.partSets)
            {
               _loc21_ = false;
               if(_loc6_.gender == FigureData.const_1385)
               {
                  _loc21_ = true;
               }
               else if(_loc6_.gender == gender)
               {
                  _loc21_ = true;
               }
               if(_loc6_.isSelectable && _loc21_ && (_loc13_ || var_1106 >= _loc6_.clubLevel))
               {
                  _loc7_ = new AvatarEditorGridPartItem(AvatarEditorView.var_1386.clone() as IWindowContainer,param1,_loc6_,_loc12_,_loc15_);
                  _loc3_.push(_loc7_);
               }
            }
         }
         _loc3_.sort(orderByClub);
         _loc5_ = 0;
         while(_loc5_ < const_1133)
         {
            _loc22_ = _loc4_[_loc5_] as Array;
            _loc22_.sort(orderPaletteByClub);
            _loc5_++;
         }
         return new CategoryData(_loc3_,_loc4_);
      }
      
      public function get wardrobe() : WardrobeModel
      {
         if(!var_164)
         {
            init();
         }
         return var_449.getValue(AvatarEditorSideCategory.WARDROBE);
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         _communication = param2 as IHabboCommunicationManager;
         var_930 = new AvatarEditorHandler(this,_communication);
      }
      
      public function getPalette(param1:int) : IPalette
      {
         if(var_770 == null)
         {
            return null;
         }
         return var_770.getPalette(param1);
      }
      
      public function get gender() : String
      {
         return var_635;
      }
      
      public function get handler() : AvatarEditorHandler
      {
         return var_930;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         _windowManager = param2 as IHabboWindowManager;
      }
      
      public function isClubTryoutAllowed() : Boolean
      {
         var _loc1_:String = configuration.getKey("avatareditor.allowclubtryout");
         return Boolean(_loc1_ == "1");
      }
      
      public function toggleAvatarEditorPage(param1:String) : void
      {
         _view.toggleCategoryView(param1,false);
      }
      
      public function get avatarRenderManager() : IAvatarRenderManager
      {
         return var_584;
      }
      
      private function orderPaletteByClub(param1:AvatarEditorGridColorItem, param2:AvatarEditorGridColorItem) : Number
      {
         var _loc3_:Number = param1.partColor == null ? -1 : Number(param1.partColor.clubLevel as Number);
         var _loc4_:Number = param2.partColor == null ? -1 : Number(param2.partColor.clubLevel as Number);
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.partColor.index < param2.partColor.index)
         {
            return -1;
         }
         if(param1.partColor.index > param2.partColor.index)
         {
            return 1;
         }
         return 0;
      }
      
      public function getCategoryWindowContainer(param1:String) : IWindowContainer
      {
         var _loc2_:IAvatarEditorCategoryModel = var_88.getValue(param1) as IAvatarEditorCategoryModel;
         if(_loc2_ != null)
         {
            return _loc2_.getWindowContainer();
         }
         return null;
      }
      
      public function getSideContentWindowContainer(param1:String) : IWindowContainer
      {
         var _loc2_:ISideContentModel = var_449.getValue(param1) as ISideContentModel;
         if(_loc2_ != null)
         {
            return _loc2_.getWindowContainer();
         }
         return null;
      }
      
      public function openEditor(param1:IWindowContainer = null) : Boolean
      {
         if(!var_164)
         {
            init();
         }
         if(_view == null)
         {
            _view = new AvatarEditorView(this,_windowManager,_catalog);
         }
         if(param1 != null)
         {
            param1.addChild(_view.window);
         }
         else
         {
            if(_windowContext == null)
            {
               _windowContext = _windowManager.createWindow("avatarEditorContainer","",HabboWindowType.const_63,HabboWindowStyle.const_42,0 | 0,new Rectangle(0,0,2,2),null,0) as IWindowContainer;
               _windowContext.addChild(_view.window);
               _windowContext.center();
               _windowContext.visible = false;
            }
            _windowContext.visible = true;
         }
         _view.show();
         toggleAvatarEditorPage(AvatarEditorFigureCategory.const_975);
         return true;
      }
      
      private function onAvatarRendererReady(param1:Event = null) : void
      {
         var_770 = var_584.getFigureData(AvatarType.const_85);
      }
      
      private function onAvatarRenderManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var_584 = param2 as IAvatarRenderManager;
         (var_584 as Component).events.addEventListener(AvatarRenderEvent.AVATAR_RENDER_READY,onAvatarRendererReady);
      }
      
      private function onInventoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var_11 = param2 as IHabboInventory;
      }
      
      public function loadAvatarInEditor(param1:String, param2:String, param3:int = 0) : void
      {
         var _loc5_:* = null;
         switch(param2)
         {
            case FigureData.const_83:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.const_90:
            case "f":
            case "F":
               param2 = "null";
         }
         var_1106 = param3;
         var _loc4_:FigureData = var_538[param2];
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.loadAvatarData(param1,param2);
         if(param2 != this.gender)
         {
            this.gender = param2;
         }
         if(var_88)
         {
            for each(_loc5_ in var_88)
            {
               _loc5_.reset();
            }
         }
         if(_view != null)
         {
            _view.update();
         }
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         _localization = param2 as IHabboLocalizationManager;
      }
      
      public function get windowContext() : IWindowContainer
      {
         return _windowContext;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return var_150;
      }
      
      public function stripClubItems() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_88)
         {
            _loc1_.stripClubItemsOverLevel(clubMemberLevel);
         }
      }
      
      public function get clubMemberLevel() : int
      {
         return var_1106;
      }
   }
}
