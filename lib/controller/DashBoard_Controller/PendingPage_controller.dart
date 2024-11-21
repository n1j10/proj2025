import 'package:allahoakbar/UI/Dashboard/ToDo.dart';
import 'package:get/get.dart';

class PendingPageController extends GetxController{

  void goToDOPage(){
     Get.to(ToDo());
  }
}