package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2308:Boolean;
      
      private var var_2310:int;
      
      private var var_2311:Boolean;
      
      private var var_1501:String;
      
      private var var_1384:String;
      
      private var var_1651:int;
      
      private var var_1847:String;
      
      private var var_2309:String;
      
      private var var_1846:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1651 = param1.readInteger();
         this.var_1501 = param1.readString();
         this.var_1847 = param1.readString();
         this.var_2308 = param1.readBoolean();
         this.var_2311 = param1.readBoolean();
         param1.readString();
         this.var_2310 = param1.readInteger();
         this.var_1846 = param1.readString();
         this.var_2309 = param1.readString();
         this.var_1384 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1384;
      }
      
      public function get avatarName() : String
      {
         return this.var_1501;
      }
      
      public function get avatarId() : int
      {
         return this.var_1651;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2308;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2309;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1846;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2311;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1847;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2310;
      }
   }
}
