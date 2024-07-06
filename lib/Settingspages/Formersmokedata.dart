

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';
import 'package:quitit/Controllers/datasender.dart'; // Import the controller

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
  final DataController dataController = Get.find(); // Find the controller

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();

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
    _timer = Timer.periodic(Duration(minutes: 1), (timer) {
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
    controller1.text = userdata.read('controller1') ?? '';
    controller2.text = userdata.read('controller2') ?? '';
    controller3.text = userdata.read('controller3') ?? '';
    controller4.text = userdata.read('controller4') ?? '';


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
    dailyAmount = int.tryParse(controller2.text) ?? 0;
    perPack = int.tryParse(controller3.text) ?? 0;
    packPrice = double.tryParse(controller4.text) ?? 0.0;

    // Calculate the difference in hours from the quit date and time
    int hoursPassed = DateTime.now().difference(quitDateTime ?? DateTime.now()).inHours;
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
    userdata.write('controller1', controller1.text);
    userdata.write('controller2', controller2.text);
    userdata.write('controller3', controller3.text);
    userdata.write('controller4', controller4.text);

    // Format quitDateTime to include date and time
    String formattedQuitDateTime = quitDateTime != null
        ? DateFormat('yyyy-MM-dd HH:mm:ss').format(quitDateTime!)
        : '';
    userdata.write('quitDateTime', formattedQuitDateTime);

    userdata.write('achievementUnlocked', achievementUnlocked);
    userdata.write('newachievementUnlocked', newachievementUnlocked);

    changesSaved = true;

    dataController.updateData(cigarettesAvoided, moneySaved, timeSaved,
        quitDateTime != null ? DateTime.now().difference(quitDateTime!).inDays : 0);

    setState(() {});
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
                          Navigator.of(context).pop(); // This will close the dialog
                          Navigator.of(context).pop(); // This will go back
                        },
                        child: Text('Yes'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // This will close the dialog
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
                DateTimePicker(
                  type: DateTimePickerType.dateTime, // Change to dateTime
                  dateMask: 'MMM d, yyyy ', // Date and time format with AM/PM
                  initialValue: quitDateTime?.toString() ?? '', // Initial value with date and time
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                  dateLabelText: 'Pick date and time', // Updated label
                  selectableDayPredicate: (date) {
                    return true;
                  },
                  onChanged: (val) {
                    setState(() {
                      quitDateTime = DateTime.parse(val);
                      dataController.setSelectedDateTime(DateTime.parse(val));
                    });
                    calculateData();
                    updateAndCalculateData();
                  },
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    calculateData();
                  },
                  controller: controller2,
                  style: TextStyle(),
                  cursorColor: Color(0xFF64C397),
                  decoration: InputDecoration(
                    labelText: 'Daily amount of cigarette',
                    labelStyle: TextStyle(
                      fontFamily: 'Eina',
                      color: Color(0xFF64C397),
                    ),
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF64C397),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF383839),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    calculateData();
                  },
                  controller: controller3,
                  style: TextStyle(),
                  cursorColor: Color(0xFF64C397),
                  decoration: InputDecoration(
                    labelText: 'Cigarette per pack',
                    labelStyle: TextStyle(
                      fontFamily: 'Eina',
                      color: Color(0xFF64C397),
                    ),
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF64C397),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF383839),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    calculateData();
                  },
                  controller: controller4,
                  style: TextStyle(),
                  cursorColor: Color(0xFF64C397),
                  decoration: InputDecoration(
                    labelText: 'Pack price (Rupees)',
                    labelStyle: TextStyle(
                      fontFamily: 'Eina',
                      color: Color(0xFF64C397),
                    ),
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF64C397),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF383839),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    calculateData();
                    updateAndCalculateData();
                  },
                  child: Text('Update and Calculate',style: TextStyle(fontFamily: 'Eina'),),style: ElevatedButton.styleFrom(
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
