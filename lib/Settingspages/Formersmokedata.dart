import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';
import 'package:quitit/Components/MyTextfield.dart';
import 'package:quitit/Controllers/datepicker.dart';

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

bool achievementUnlocked = false;
bool newachievementUnlocked = false;
DateTime _selectedDate = DateTime.now();
TimeOfDay _selectedTime = TimeOfDay.now();

class _MyPageState extends State<MyPage> {
  bool changesSaved = false;
  final userdata = GetStorage();
  final datepicker dateController = Get.put(datepicker());

  final DailyTotalCiggarette = TextEditingController();
  final CiggarettePerPack = TextEditingController();
  final PackPrice = TextEditingController();

  int dailyAmount = 0;
  int perPack = 0;
  double packPrice = 0.0;
  int cigarettesAvoided = 0;
  double moneySaved = 0.0;
  double timeSaved = 0.0;
  DateTime? quitDateTime;
  DateTime lastCalculatedDate = DateTime.now();

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    readData();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      final currentDate = DateTime.now();
      if (currentDate.day != lastCalculatedDate.day) {
        // Update the last calculated date to the new day
        lastCalculatedDate = currentDate;
        setState(() {
          calculateData();
        });
      }
    });
  }

  void readData() {
    DailyTotalCiggarette.text = userdata.read('DailyTotalCiggarette') ?? '';
    CiggarettePerPack.text = userdata.read('CiggarettePerPack') ?? '';
    PackPrice.text = userdata.read('PackPrice') ?? '';

    final String? quitDateTimeString = userdata.read('quitDateTime');

    DateTime? quitDateTime;

    if (quitDateTimeString != null && quitDateTimeString.isNotEmpty) {
      quitDateTime = DateTime.parse(quitDateTimeString);
    }

    // Assign the parsed DateTime to the class variable
    this.quitDateTime = quitDateTime;

    achievementUnlocked = userdata.read('achievementUnlocked') ?? false;
    newachievementUnlocked = userdata.read('newachievementUnlocked') ?? false;

    calculateData();
  }

  void calculateData() {
    dailyAmount = int.tryParse(DailyTotalCiggarette.text) ?? 0;
    perPack = int.tryParse(CiggarettePerPack.text) ?? 0;
    packPrice = double.tryParse(PackPrice.text) ?? 0.0;

    // Calculate the difference in hours from the quit date and time
    int hoursPassed =
        DateTime.now().difference(quitDateTime ?? DateTime.now()).inHours;
    cigarettesAvoided = (dailyAmount / 24 * hoursPassed).toInt();

    if (perPack > 0) {
      moneySaved = (cigarettesAvoided / perPack) * packPrice;
    } else {
      moneySaved = 0.0;
    }

    timeSaved = cigarettesAvoided * 5; // Calculate time saved in minutes

    // Convert to hours if time saved exceeds 60 minutes
    if (timeSaved >= 60) {
      timeSaved /= 60.0; // Convert to hours
    }
  }

  void updateAndCalculateData() {
    userdata.write('controller1', DailyTotalCiggarette.text);
    userdata.write('CiggarettePerPack', CiggarettePerPack.text);
    userdata.write('PackPrice', PackPrice.text);

    // Format quitDateTime to include date and time
    String formattedQuitDateTime = quitDateTime != null
        ? DateFormat('yyyy-MM-dd HH:mm:ss').format(quitDateTime!)
        : '';
    userdata.write('quitDateTime', formattedQuitDateTime);

    userdata.write('achievementUnlocked', achievementUnlocked);
    userdata.write('newachievementUnlocked', newachievementUnlocked);

    changesSaved = true;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Fields Page'),
      ),
      body: SingleChildScrollView(
        child: WillPopScope(
          onWillPop: () async {
            if (changesSaved) {
              return true;
            } else {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Confirm'),
                    content: Text('Do you want to exit without saving?'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pop(); // This will close the dialog
                          Navigator.of(context).pop(); // This will go back
                        },
                        child: Text('Yes'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pop(); // This will close the dialog
                        },
                        child: Text('No'),
                      ),
                    ],
                  );
                },
              );
              return false;
            }
          },
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  String? select =
                      dateController.getSelectedDateTime.toString();
                  return DateTimePicker(
                    type: DateTimePickerType.dateTime,
                    dateMask: 'MMM d, yyyy h:m',
                    initialValue: select,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                    dateLabelText: 'Pick date and time',
                    selectableDayPredicate: (date) {
                      return true;
                    },
                    onChanged: (val) {
                      DateTime selectedDateTime = DateTime.parse(val);
                      dateController.selectedDate(selectedDateTime);
                      calculateData();
                      updateAndCalculateData();
                      print(dateController.selectedDate);
                    },
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  );
                }),
                SizedBox(height: 20.0),
                MyTextField(
                  onchange: () {
                    calculateData();
                    print(DailyTotalCiggarette);
                  },
                  controller: DailyTotalCiggarette,
                  label: 'Daily amount of cigarette',
                  Style: null,
                  ontap: () {},
                  readonly: false,
                ),
                SizedBox(height: 20.0),
                MyTextField(
                  onchange: () {
                    calculateData();
                    print(CiggarettePerPack);
                  },
                  controller: CiggarettePerPack,
                  label: 'Cigarette per pack',
                  Style: null,
                  ontap: () {},
                  readonly: false,
                ),
                SizedBox(height: 20.0),
                MyTextField(
                  onchange: () {
                    calculateData();
                    print(PackPrice.text);
                  },
                  controller: PackPrice,
                  label: 'Pack price (Rupees)',
                  Style: null,
                  ontap: () {},
                  readonly: false,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    calculateData();
                    updateAndCalculateData();
                    print(CiggarettePerPack.text);
                  },
                  child: Text(
                    'Update and Calculate',
                    style: TextStyle(fontFamily: 'Eina'),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF64C397),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
