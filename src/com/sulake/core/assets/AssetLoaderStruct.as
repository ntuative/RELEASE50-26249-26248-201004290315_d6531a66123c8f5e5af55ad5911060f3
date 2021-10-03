package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_727:IAssetLoader;
      
      private var var_1381:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1381 = param1;
         var_727 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_727;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_727 != null)
            {
               if(true)
               {
                  var_727.dispose();
                  var_727 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1381;
      }
   }
}
