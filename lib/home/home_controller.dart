import 'package:get/get.dart';

class HomeController extends GetxController{
RxBool n=false.obs;
change(bool value){
  n.value=value;
}
}