package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1037:int = 0;
      
      private var var_1269:int = 0;
      
      private var var_1865:String = "";
      
      private var var_1038:int = 0;
      
      private var var_1953:String = "";
      
      private var var_1954:int = 0;
      
      private var var_1507:String = "";
      
      private var var_1956:int = 0;
      
      private var var_1952:int = 0;
      
      private var var_1867:String = "";
      
      private var var_1955:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1956 = param1;
         var_1867 = param2;
         var_1507 = param3;
         var_1865 = param4;
         var_1953 = param5;
         if(param6)
         {
            var_1269 = 1;
         }
         else
         {
            var_1269 = 0;
         }
         var_1954 = param7;
         var_1952 = param8;
         var_1038 = param9;
         var_1955 = param10;
         var_1037 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1956,var_1867,var_1507,var_1865,var_1953,var_1269,var_1954,var_1952,var_1038,var_1955,var_1037];
      }
      
      public function dispose() : void
      {
      }
   }
}
