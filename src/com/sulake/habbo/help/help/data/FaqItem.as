package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1205:int;
      
      private var var_1204:String;
      
      private var var_2213:String;
      
      private var _index:int;
      
      private var var_2214:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1205 = param1;
         var_2213 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1204;
      }
      
      public function get questionId() : int
      {
         return var_1205;
      }
      
      public function get questionText() : String
      {
         return var_2213;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1204 = param1;
         var_2214 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_2214;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
