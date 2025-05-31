import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FavouriteController extends GetxController {
  RxList<String> fruits = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'Strawberry',
    'Grapes',
    'Pineapple',
    'Watermelon',
    'Kiwi',
    'Blueberry',
  ].obs;

RxList favourite=[].obs;

addtofavourite(String value){
  favourite.add(value);
}
removefavourite(String value){
  favourite.remove(value);
}
}
