package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1904:Boolean;
      
      private var var_1520:Array;
      
      private var var_1903:Boolean;
      
      private var var_1901:Boolean;
      
      private var var_1902:Boolean;
      
      private var var_160:Array;
      
      private var var_1908:Boolean;
      
      private var var_1907:Boolean;
      
      private var var_1519:Array;
      
      private var var_1905:Boolean;
      
      private var var_1906:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1906;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1904;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1903;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1908;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1907;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1520;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_160 = [];
         var_1520 = [];
         _roomMessageTemplates = [];
         var_1519 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_160.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1520.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1519.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1908 = param1.readBoolean();
         var_1902 = param1.readBoolean();
         var_1903 = param1.readBoolean();
         var_1901 = param1.readBoolean();
         var_1906 = param1.readBoolean();
         var_1907 = param1.readBoolean();
         var_1904 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1905 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1901;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1519;
      }
      
      public function get issues() : Array
      {
         return var_160;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1905;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1902;
      }
   }
}
