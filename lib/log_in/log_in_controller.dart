import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LogInController extends GetxController{
final namecontroller=TextEditingController().obs;
final passwordcontroller=TextEditingController().obs;
final Uri url = Uri.parse('https://reqres.in/signup');


void login()async{
print('function working');
try{
final response=await http.post(url,body: 
{
  'email':namecontroller.value.text,
  'password':passwordcontroller.value.text
}
);
if(response.statusCode==200){
  print('done');
  Get.snackbar("Successful", 'Log in Successful');
}
else{
  print(response.body);
}
}
catch(e){
Get.snackbar(e.toString(), 'Network Error');
}
}

}