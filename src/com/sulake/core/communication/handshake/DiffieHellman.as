package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1378:BigInteger;
      
      private var var_596:BigInteger;
      
      private var var_1611:BigInteger;
      
      private var var_1610:BigInteger;
      
      private var var_2251:BigInteger;
      
      private var var_2196:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1378 = param1;
         var_1611 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2251.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1610 = new BigInteger();
         var_1610.fromRadix(param1,param2);
         var_2251 = var_1610.modPow(var_596,var_1378);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2196.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1378.toString() + ",generator: " + var_1611.toString() + ",secret: " + param1);
         var_596 = new BigInteger();
         var_596.fromRadix(param1,param2);
         var_2196 = var_1611.modPow(var_596,var_1378);
         return true;
      }
   }
}
