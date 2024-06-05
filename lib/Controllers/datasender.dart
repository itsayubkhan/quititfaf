import 'package:get/get.dart';

class DataController extends GetxController {
  var cigarettesAvoided = 0.obs;
  var moneySaved = 0.0.obs;
  var timeSaved = 0.0.obs;
  var daysSinceQuitting = 0.obs;

  void updateData(int cigarettes, double money, double time, int days) {
    cigarettesAvoided.value = cigarettes;
    moneySaved.value = money;
    timeSaved.value = time;
    daysSinceQuitting.value = days;
  }
}
