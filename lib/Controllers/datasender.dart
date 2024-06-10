import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DataController extends GetxController {
  final box = GetStorage();

  var daysSinceQuitting = 0.obs;
  var cigarettesAvoided = 0.obs;
  var moneySaved = 0.0.obs;
  var timeSaved = 0.0.obs;
  var newachievementUnlocked = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void updateData(int cigarettesAvoided, double moneySaved, double timeSaved, int daysSinceQuitting) {
    this.cigarettesAvoided.value = cigarettesAvoided;
    this.moneySaved.value = moneySaved;
    this.timeSaved.value = timeSaved;
    this.daysSinceQuitting.value = daysSinceQuitting;
    saveData();
  }


  void saveData() {
    box.write('daysSinceQuitting', daysSinceQuitting.value);
    box.write('cigarettesAvoided', cigarettesAvoided.value);
    box.write('moneySaved', moneySaved.value);
    box.write('timeSaved', timeSaved.value);
    box.write('newachievementUnlocked', newachievementUnlocked.value);
  }

  void loadData() {
    daysSinceQuitting.value = box.read('daysSinceQuitting') ?? 0;
    cigarettesAvoided.value = box.read('cigarettesAvoided') ?? 0;
    moneySaved.value = box.read('moneySaved') ?? 0.0;
    timeSaved.value = box.read('timeSaved') ?? 0.0;
    newachievementUnlocked.value = box.read('newachievementUnlocked') ?? false;
  }
}
