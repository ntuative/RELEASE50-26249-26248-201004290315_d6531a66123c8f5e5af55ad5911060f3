package com.sulake.habbo.moderation
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.outgoing.moderator.CloseIssuesMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.PickIssuesMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ReleaseIssuesMessageComposer;
   import com.sulake.habbo.communication.messages.parser.moderation.IssueMessageData;
   import com.sulake.habbo.sound.HabboSoundTypesEnum;
   import flash.utils.getTimer;
   
   public class IssueManager
   {
      
      public static const const_817:String = "issue_bundle_open";
      
      public static const const_726:String = "issue_bundle_my";
      
      public static const const_813:String = "issue_bundle_picked";
       
      
      private var var_675:Array;
      
      private var var_813:Map;
      
      private var var_160:Map;
      
      private var var_1002:Map;
      
      private var var_61:ModerationManager;
      
      private var var_814:Array;
      
      private var var_1709:int = 1;
      
      private var var_129:Map;
      
      private var var_569:IssueBrowser;
      
      public function IssueManager(param1:ModerationManager)
      {
         super();
         var_61 = param1;
         var_160 = new Map();
         var_129 = new Map();
         var_813 = new Map();
         var_569 = new IssueBrowser(this,var_61.windowManager,var_61.assets);
         var_675 = [];
         var_814 = [];
         var_1002 = new Map();
      }
      
      private function updateHandler(param1:int) : void
      {
         var _loc2_:IssueHandler = var_1002.getValue(param1) as IssueHandler;
         if(_loc2_ != null)
         {
            _loc2_.update();
         }
      }
      
      public function getBundles(param1:String) : Array
      {
         var _loc4_:* = null;
         if(var_129 == null)
         {
            return [];
         }
         var _loc2_:* = [];
         var _loc3_:int = var_61.sessionDataManager.userId;
         for each(_loc4_ in var_129)
         {
            switch(param1)
            {
               case const_817:
                  if(_loc4_.state == IssueMessageData.const_140)
                  {
                     _loc2_.push(_loc4_);
                  }
                  break;
               case const_726:
                  if(_loc4_.state == IssueMessageData.const_382 && _loc4_.pickerUserId == _loc3_)
                  {
                     _loc2_.push(_loc4_);
                  }
                  break;
               case const_813:
                  if(_loc4_.state == IssueMessageData.const_382 && _loc4_.pickerUserId != _loc3_)
                  {
                     _loc2_.push(_loc4_);
                  }
                  break;
            }
         }
         return _loc2_;
      }
      
      public function pickBundle(param1:int) : void
      {
         var _loc2_:IssueBundle = var_129.getValue(param1) as IssueBundle;
         if(_loc2_ == null)
         {
            return;
         }
         sendPick(_loc2_.getIssueIds());
         var_675 = var_675.concat(_loc2_.getIssueIds());
      }
      
      public function closeIssue(param1:int, param2:int) : void
      {
         sendClose([param1],param2);
      }
      
      public function updateIssue(param1:IssueMessageData) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Boolean = false;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         if(param1 == null)
         {
            return;
         }
         var_160.remove(param1.issueId);
         var_160.add(param1.issueId,param1);
         var _loc2_:int = int(var_813.getValue(param1.issueId));
         if(_loc2_ != 0)
         {
            _loc3_ = var_129.getValue(_loc2_) as IssueBundle;
            if(_loc3_ != null)
            {
               if(validateBundle(_loc3_,param1))
               {
                  _loc3_.updateIssue(param1);
               }
               else
               {
                  _loc3_.removeIssue(param1.issueId);
                  if(_loc3_.getIssueCount() == 0)
                  {
                     var_129.remove(_loc3_.id);
                     removeHandler(_loc3_.id);
                  }
                  var_813.remove(param1.issueId);
                  _loc3_ = null;
               }
            }
         }
         if(param1.state == IssueMessageData.const_1140)
         {
            var_160.remove(param1.issueId);
            return;
         }
         if(_loc3_ == null)
         {
            for each(_loc4_ in var_129)
            {
               if(validateBundle(_loc4_,param1))
               {
                  _loc3_ = _loc4_;
                  _loc3_.updateIssue(param1);
                  var_813.add(param1.issueId,_loc3_.id);
                  break;
               }
            }
         }
         if(_loc3_ == null)
         {
            _loc2_ = var_1709++;
            _loc3_ = new IssueBundle(_loc2_,param1);
            var_813.add(param1.issueId,_loc2_);
            var_129.add(_loc2_,_loc3_);
         }
         if(_loc3_ == null)
         {
            return;
         }
         if(var_675.indexOf(param1.issueId) != -1)
         {
            handleBundle(_loc3_.id);
         }
         if(param1.state == IssueMessageData.const_140)
         {
            _loc5_ = getBundles(const_726);
            _loc6_ = false;
            for each(_loc7_ in _loc5_)
            {
               if(validateBundle(_loc7_,param1,true))
               {
                  _loc6_ = true;
                  break;
               }
            }
            _loc8_ = var_814.indexOf(param1.issueId);
            if(_loc8_ == -1 && _loc6_)
            {
               sendPick([param1.issueId]);
            }
            else
            {
               var_814.splice(_loc8_,1);
            }
         }
         updateHandler(_loc3_.id);
         var_569.update();
      }
      
      public function handleBundle(param1:int) : void
      {
         var _loc2_:IssueBundle = var_129.getValue(param1) as IssueBundle;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:IssueHandler = new IssueHandler(var_61,_loc2_);
         var_1002.remove(param1);
         var_1002.add(param1,_loc3_);
         var_61.windowTracker.show(_loc3_,null,false,false,false);
         var_675 = [];
      }
      
      private function sendClose(param1:Array, param2:int) : void
      {
         if(param1 == null || var_61 == null || true)
         {
            return;
         }
         var_61.connection.send(new CloseIssuesMessageComposer(param1,param2));
      }
      
      private function sendPick(param1:Array) : void
      {
         if(param1 == null || var_61 == null || true)
         {
            return;
         }
         var_61.connection.send(new PickIssuesMessageComposer(param1));
      }
      
      public function releaseAll() : void
      {
         var _loc3_:* = null;
         if(var_129 == null)
         {
            return;
         }
         var _loc1_:int = var_61.sessionDataManager.userId;
         var _loc2_:* = [];
         for each(_loc3_ in var_129)
         {
            if(_loc3_.state == IssueMessageData.const_382 && _loc3_.pickerUserId == _loc1_)
            {
               _loc2_ = _loc2_.concat(_loc3_.getIssueIds());
            }
         }
         sendRelease(_loc2_);
      }
      
      private function sendRelease(param1:Array) : void
      {
         if(param1 == null || param1.length == 0 || var_61 == null || true)
         {
            return;
         }
         var_61.connection.send(new ReleaseIssuesMessageComposer(param1));
         var_814 = var_814.concat(param1);
      }
      
      public function closeBundle(param1:int, param2:int) : void
      {
         var _loc3_:IssueBundle = var_129.getValue(param1) as IssueBundle;
         if(_loc3_ == null)
         {
            return;
         }
         sendClose(_loc3_.getIssueIds(),param2);
      }
      
      public function removeHandler(param1:int) : void
      {
         var _loc2_:* = var_1002.remove(param1) as IssueHandler;
         if(_loc2_ != null)
         {
            _loc2_.dispose();
            _loc2_ = null;
         }
      }
      
      public function updatePriorities() : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:* = null;
         if(var_61 == null || true)
         {
            return;
         }
         var _loc1_:int = getTimer();
         var _loc3_:int = parseInt(var_61.configuration.getKey("chf.score.updatefactor","60"));
         for each(_loc4_ in var_160)
         {
            if(_loc4_ != null)
            {
               _loc2_ = (_loc1_ - _loc4_.timeStamp) / 1000;
               _loc4_.temporalPriority = int(_loc2_ / _loc3_);
            }
         }
         if(var_569 != null)
         {
            var_569.update();
         }
      }
      
      public function releaseBundle(param1:int) : void
      {
         if(var_129 == null)
         {
            return;
         }
         var _loc2_:IssueBundle = var_129.getValue(param1) as IssueBundle;
         if(_loc2_ == null)
         {
            return;
         }
         sendRelease(_loc2_.getIssueIds());
      }
      
      public function autoPick() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc1_:Array = var_129.getValues();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.state == IssueMessageData.const_140 && (_loc2_ == null || _loc3_.getPrioritySum() > _loc2_.getPrioritySum()))
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            return;
         }
         pickBundle(_loc2_.id);
      }
      
      private function validateBundle(param1:IssueBundle, param2:IssueMessageData, param3:Boolean = false) : Boolean
      {
         if(param2.reportedUserId == 0)
         {
            return false;
         }
         if(param1.reportedUserId != param2.reportedUserId)
         {
            return false;
         }
         if(!param3)
         {
            if(param1.state != param2.state)
            {
               return false;
            }
            if(param1.pickerUserId != param2.pickerUserId)
            {
               return false;
            }
         }
         return true;
      }
      
      public function playSound(param1:IssueMessageData) : void
      {
         if(false)
         {
            return;
         }
         if(var_569 == null || !var_569.isOpen())
         {
            var_61.soundManager.playSound(HabboSoundTypesEnum.const_959);
         }
      }
      
      public function removeIssue(param1:int) : void
      {
         var _loc3_:* = null;
         if(var_160 == null)
         {
            return;
         }
         var _loc2_:int = var_813.getValue(param1);
         if(_loc2_ != 0)
         {
            _loc3_ = var_129.getValue(_loc2_) as IssueBundle;
            if(_loc3_ != null)
            {
               _loc3_.removeIssue(param1);
               if(_loc3_.getIssueCount() == 0)
               {
                  var_129.remove(_loc3_.id);
               }
            }
         }
         var_160.remove(param1);
         var_569.update();
      }
      
      public function init() : void
      {
         var_569.show();
      }
      
      public function autoHandle(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc2_:Array = var_129.getValues();
         var _loc4_:int = var_61.sessionDataManager.userId;
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_.state == IssueMessageData.const_382 && _loc5_.pickerUserId == _loc4_ && _loc5_.id != param1 && (_loc3_ == null || _loc5_.getPrioritySum() > _loc3_.getPrioritySum()))
            {
               _loc3_ = _loc5_;
            }
         }
         if(_loc3_ == null)
         {
            autoPick();
            return;
         }
         handleBundle(_loc3_.id);
      }
   }
}
