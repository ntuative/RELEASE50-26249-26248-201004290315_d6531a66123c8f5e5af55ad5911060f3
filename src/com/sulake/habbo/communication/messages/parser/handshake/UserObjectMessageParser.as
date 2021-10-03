package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_313:String;
      
      private var var_2327:String;
      
      private var var_2331:int;
      
      private var var_2329:int;
      
      private var var_634:String;
      
      private var var_1384:String;
      
      private var _name:String;
      
      private var var_506:int;
      
      private var var_852:int;
      
      private var var_2330:int;
      
      private var var_1683:int;
      
      private var var_2328:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2329;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1384;
      }
      
      public function get customData() : String
      {
         return this.var_2327;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_506;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2331;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2328;
      }
      
      public function get figure() : String
      {
         return this.var_313;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1683;
      }
      
      public function get sex() : String
      {
         return this.var_634;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_313 = param1.readString();
         this.var_634 = param1.readString();
         this.var_2327 = param1.readString();
         this.var_1384 = param1.readString();
         this.var_2330 = param1.readInteger();
         this.var_2328 = param1.readString();
         this.var_2331 = param1.readInteger();
         this.var_2329 = param1.readInteger();
         this.var_1683 = param1.readInteger();
         this.var_852 = param1.readInteger();
         this.var_506 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2330;
      }
      
      public function get respectLeft() : int
      {
         return this.var_852;
      }
   }
}
