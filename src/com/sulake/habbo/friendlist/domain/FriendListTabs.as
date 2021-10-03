package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.FriendRequestsView;
   import com.sulake.habbo.friendlist.FriendsView;
   import com.sulake.habbo.friendlist.SearchView;
   
   public class FriendListTabs
   {
       
      
      private var var_1773:int = 200;
      
      private var var_684:int = 200;
      
      private var var_445:IFriendListTabsDeps;
      
      private var var_410:Array;
      
      private var var_1475:FriendListTab;
      
      private var var_1474:int = 200;
      
      public function FriendListTabs(param1:IFriendListTabsDeps)
      {
         var_410 = new Array();
         super();
         var_445 = param1;
         var_410.push(new FriendListTab(var_445.getFriendList(),FriendListTab.const_87,new FriendsView(),"${friendlist.friends}","friends_footer","hdr_friends"));
         var_410.push(new FriendListTab(var_445.getFriendList(),FriendListTab.const_93,new FriendRequestsView(),"${friendlist.tab.friendrequests}","friend_requests_footer","hdr_friend_requests"));
         var_410.push(new FriendListTab(var_445.getFriendList(),FriendListTab.const_317,new SearchView(),"${generic.search}","search_footer","hdr_search"));
         toggleSelected(null);
      }
      
      public function findSelectedTab() : FriendListTab
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
      
      public function get tabContentWidth() : int
      {
         return var_1474 - 2;
      }
      
      public function toggleSelected(param1:FriendListTab) : void
      {
         var _loc2_:FriendListTab = findSelectedTab();
         if(_loc2_ == null)
         {
            var_684 = var_1773;
            setSelected(determineDisplayedTab(param1),true);
         }
         else if(_loc2_ == param1 || param1 == null)
         {
            var_1773 = var_684;
            var_684 = 0;
            clearSelections();
         }
         else
         {
            setSelected(determineDisplayedTab(param1),true);
         }
      }
      
      public function clearSelections() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_410)
         {
            _loc1_.setSelected(false);
         }
      }
      
      public function set tabContentHeight(param1:int) : void
      {
         var_684 = param1;
      }
      
      public function findTab(param1:int) : FriendListTab
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
      
      private function setSelected(param1:FriendListTab, param2:Boolean) : void
      {
         var _loc3_:FriendListTab = findSelectedTab();
         clearSelections();
         param1.setSelected(param2);
         if(param2)
         {
            var_1475 = param1;
         }
      }
      
      private function determineDisplayedTab(param1:FriendListTab) : FriendListTab
      {
         if(param1 != null)
         {
            return param1;
         }
         if(var_1475 != null)
         {
            return var_1475;
         }
         return var_410[0];
      }
      
      public function get tabContentHeight() : int
      {
         return var_684;
      }
      
      public function set windowWidth(param1:int) : void
      {
         var_1474 = param1;
      }
      
      public function getTabs() : Array
      {
         return var_410;
      }
      
      public function get windowWidth() : int
      {
         return var_1474;
      }
   }
}
