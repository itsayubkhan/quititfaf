import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';

class DataSaver extends GetxController {
  var totalciggarettesSaved = 0.obs;
  Rx<double> totalmoneysaved = 0.0.obs;
  var timesaved = 0.obs;
  var min = 0.obs;
  var hours = 0.obs;
  Rx<String> secondsSinceQuitting = ''.obs;

  void UpdateData(
      int totalciggarettesSaved,
      double totalmoneysaved,
      int timesaved,
      int min,
      int hours,
      String secondsSinceQuitting) { // Expecting String here
    this.totalciggarettesSaved.value = totalciggarettesSaved;
    this.totalmoneysaved.value = totalmoneysaved;
    this.timesaved.value = timesaved;
    this.min.value = min;
    this.hours.value = hours;
    this.secondsSinceQuitting.value = secondsSinceQuitting;
  }
}
