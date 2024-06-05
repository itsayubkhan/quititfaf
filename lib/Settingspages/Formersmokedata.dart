import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:quitit/frontpage.dart';
import 'package:quitit/Controllers/datasender.dart'; // Import the controller

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

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

  @override
  void initState() {
    super.initState();
    readData();
  }

  void readData() {
    controller1.text = userdata.read('controller1') ?? '';
    controller2.text = userdata.read('controller2') ?? '';
    controller3.text = userdata.read('controller3') ?? '';
    controller4.text = userdata.read('controller4') ?? '';
    quitDateTime = userdata.read('quitDateTime') != null
        ? DateTime.parse(userdata.read('quitDateTime'))
        : null;
    calculateData();
  }

  void calculateData() {
    dailyAmount = int.tryParse(controller2.text) ?? 0;
    perPack = int.tryParse(controller3.text) ?? 0;
    packPrice = double.tryParse(controller4.text) ?? 0.0;

    // Calculate cigarettes avoided
    cigarettesAvoided = dailyAmount;

    // Calculate money saved
    if (perPack > 0) {
      moneySaved = (cigarettesAvoided / perPack) * packPrice;
    } else {
      moneySaved = 0.0;
    }

    // Calculate time saved (assuming each cigarette takes 5 minutes to smoke)
    timeSaved = cigarettesAvoided * 5;
  }

  void updateAndCalculateData() {
    userdata.write('controller1', controller1.text);
    userdata.write('controller2', controller2.text);
    userdata.write('controller3', controller3.text);
    userdata.write('controller4', controller4.text);
    if (quitDateTime != null) {
      userdata.write('quitDateTime', quitDateTime.toString());
    }
    changesSaved = true;
    calculateData();

    // Update the data in the controller
    dataController.updateData(cigarettesAvoided, moneySaved, timeSaved, quitDateTime != null ? DateTime.now().difference(quitDateTime!).inDays : 0);

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
                  type: DateTimePickerType.date,
                  dateMask: 'd MMM, yyyy',
                  initialValue: quitDateTime?.toString() ?? '',
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                  dateLabelText: 'Pick date',
                  selectableDayPredicate: (date) {
                    return true;
                  },
                  onChanged: (val) {
                    setState(() {
                      quitDateTime = DateTime.parse(val);
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
                    updateAndCalculateData();
                  },
                  child: Text('updateAndCalculate',),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
