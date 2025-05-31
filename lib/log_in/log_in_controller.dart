import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LogInController extends GetxController{
final namecontroller=TextEditingController();
final passwordcontroller=TextEditingController();
final Uri url = Uri.parse('https://reqres.in/api/login');


void login()async{
print('function working');
try{
final response=await http.post(url,
headers: {
        'Content-Type': 'application/json', 
      },

body: jsonEncode({
  "email": "eve.holt@reqres.in",
  "password": "cityslicka"
})


);
if(response.statusCode==200){
  print('done');
  Get.snackbar("Successful", 'Log in Successful');
}
else{
  print(response.statusCode);
}
}
catch(e){
Get.snackbar(e.toString(), 'Network Error');
}
}

}