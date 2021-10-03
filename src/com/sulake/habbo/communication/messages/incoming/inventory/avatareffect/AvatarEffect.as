package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var include:int;
      
      private var var_1201:int;
      
      private var _type:int;
      
      private var var_1923:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_1923;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         include = param1;
      }
      
      public function get duration() : int
      {
         return var_1201;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_1923 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1201 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return include;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}
