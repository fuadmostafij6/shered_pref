


import 'package:shared_preferences/shared_preferences.dart';

class User_SharedPref{
   static SharedPreferences? sharedPreference;

   Future initSharedPref()async{

      sharedPreference = await SharedPreferences.getInstance();
   }

   Future setName({String? userId,})async{

      await sharedPreference!.setString('action', '$userId');
   }
   String? getName(){
      final String? action = sharedPreference!.getString('action');
      print(action);

      return action;
   }

   clear()async{
      final success = await sharedPreference!.remove('action');

      return success;
   }


}