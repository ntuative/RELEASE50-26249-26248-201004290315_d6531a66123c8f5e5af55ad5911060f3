package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1637:XML;
      
      private var var_1423:ITextWindow;
      
      private var var_1422:ITextWindow;
      
      private var var_1640:XML;
      
      private var var_786:IWindowContainer;
      
      private var var_2305:ITextWindow;
      
      private var var_1638:String = "";
      
      private var var_2383:IButtonWindow;
      
      private var var_1639:XML;
      
      private var var_1424:ITextWindow;
      
      private var var_1641:XML;
      
      private var var_785:IButtonWindow;
      
      private var var_79:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_329:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1640) as IWindowContainer;
               break;
            case Offer.const_480:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1641) as IWindowContainer;
               break;
            case Offer.const_401:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1637) as IWindowContainer;
               break;
            case Offer.const_569:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1639) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_786 != null)
            {
               _window.removeChild(var_786);
               var_786.dispose();
            }
            var_786 = _loc2_;
            _window.addChild(_loc2_);
            var_786.x = 0;
            var_786.y = 0;
         }
         var_1424 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1422 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1423 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2305 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_785 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_785 != null)
         {
            var_785.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_785.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_79 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_79,page,var_1638);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1640 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1641 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1637 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1639 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_966,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1638 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_79 = param1.offer;
         attachStub(var_79.priceType);
         if(var_1424 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_79.priceInCredits));
            var_1424.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1422 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_79.priceInPixels));
            var_1422.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1423 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_79.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_79.priceInPixels));
            var_1423.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_785 != null)
         {
            var_785.enable();
         }
      }
   }
}
