import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
RxString imagepth=''.obs;
Future pickimage()async{
  final ImagePicker picker=ImagePicker();
final img= await picker.pickImage(source: ImageSource.camera);

if(img !=null){
  imagepth.value=img.path;
}
else{
  print('Image clicking failed');
}


}


}