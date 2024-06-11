import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DataController extends GetxController {
  final box = GetStorage();

  // Observable variables
  var daysSinceQuitting = 0.obs;
  var cigarettesAvoided = 0.obs;
  var moneySaved = 0.0.obs;
  var timeSaved = 0.0.obs;
  var newachievementUnlocked = false.obs;
  var quitDateTime = DateTime.now().obs; // Observable for quitDateTime
  Rx<DateTime?> selectedDateTime = Rx<DateTime?>(null);

  @override
  void onInit() {
    super.onInit();
    loadData();

    // Initialize selectedDateTime
    final String? storedDateTime = box.read('selectedDateTime');
    if (storedDateTime != null && storedDateTime.isNotEmpty) {
      selectedDateTime.value = DateTime.parse(storedDateTime);
    }
  }

  // Function to update data
  void updateData(int cigarettesAvoided, double moneySaved, double timeSaved, int daysSinceQuitting) {
    this.cigarettesAvoided.value = cigarettesAvoided;
    this.moneySaved.value = moneySaved;
    this.timeSaved.value = timeSaved;
    this.daysSinceQuitting.value = daysSinceQuitting;
    saveData();
  }

  // Function to save data to storage
  void saveData() {
    box.write('daysSinceQuitting', daysSinceQuitting.value);
    box.write('cigarettesAvoided', cigarettesAvoided.value);
    box.write('moneySaved', moneySaved.value);
    box.write('timeSaved', timeSaved.value);
    box.write('newachievementUnlocked', newachievementUnlocked.value);
    box.write('quitDateTime', quitDateTime.value.toString()); // Save quitDateTime
  }

  // Function to load data from storage
  void loadData() {
    daysSinceQuitting.value = box.read('daysSinceQuitting') ?? 0;
    cigarettesAvoided.value = box.read('cigarettesAvoided') ?? 0;
    moneySaved.value = box.read('moneySaved') ?? 0.0;
    timeSaved.value = box.read('timeSaved') ?? 0.0;
    newachievementUnlocked.value = box.read('newachievementUnlocked') ?? false;
    String? quitDateTimeString = box.read('quitDateTime');
    quitDateTime.value = quitDateTimeString != null && quitDateTimeString.isNotEmpty
        ? DateTime.parse(quitDateTimeString)
        : DateTime.now(); // Load quitDateTime
  }

  void setSelectedDateTime(DateTime? dateTime) {
    selectedDateTime.value = dateTime;
    box.write('selectedDateTime', dateTime?.toString()); // Save to storage
  }
}
