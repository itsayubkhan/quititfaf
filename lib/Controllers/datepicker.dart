import 'package:get/get.dart';

class datepicker extends GetxController {

  var selectedDate = DateTime.now().obs;
  void dateTime(DateTime date){
    selectedDate.value = date;
  }
  DateTime get getSelectedDateTime => selectedDate.value;
}