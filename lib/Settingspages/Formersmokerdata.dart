import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();
TextEditingController controller3 = TextEditingController();
TextEditingController controller4 = TextEditingController();
TextEditingController _dateTimeController = TextEditingController();

final gs = GetStorage();

Future<void> saveData() async {
  await gs.write('controller1', controller1.text.isNotEmpty ? controller1.text : 'No data');
  await gs.write('controller2', controller2.text.isNotEmpty ? controller2.text : 'No data');
  await gs.write('controller3', controller3.text.isNotEmpty ? controller3.text : 'No data');
  await gs.write('controller4', controller4.text.isNotEmpty ? controller4.text : 'No data');
  await gs.write('_dateTimeController', _dateTimeController.text.isNotEmpty ? _dateTimeController.text : 'No data');
}

class FSD extends StatefulWidget {
  @override
  _FSDState createState() => _FSDState();
}

class _FSDState extends State<FSD> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  String data1 = '';
  String data2 = '';
  String data3 = '';
  String data4 = '';
  int daysQuit = 0;
  int cigarettesAvoided = 0;
  double moneySaved = 0.0;
  double timeSaved = 0.0; // in minutes

  @override
  void initState() {
    super.initState();
    readData(); // Call readData to initialize data from storage
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
        updateQuitDate();
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
        updateQuitDate();
      });
    }
  }

  void updateQuitDate() {
    DateTime quitDate = DateTime(selectedDate.year, selectedDate.month, selectedDate.day, selectedTime.hour, selectedTime.minute);
    data1 = quitDate.toIso8601String();
    gs.write('controller1', data1); // Update the quit date in storage
    calculateData();
    saveData(); // Call saveData after updating the quit date
  }

  void readData() {
    setState(() {
      data1 = gs.read('controller1') ?? 'No data';
      data2 = gs.read('controller2') ?? 'No data';
      data3 = gs.read('controller3') ?? 'No data';
      data4 = gs.read('controller4') ?? 'No data';
      calculateData();
    });
  }

  void calculateData() {
    int dailyAmount = int.tryParse(data2) ?? 0;
    int perPack = int.tryParse(data3) ?? 0;
    double packPrice = double.tryParse(data4) ?? 0.0;

    // Calculate days since quitting
    if (data1 != 'No data') {
      DateTime quitDate = DateTime.parse(data1);
      daysQuit = DateTime.now().difference(quitDate).inDays;
    } else {
      daysQuit = 0;
    }

    // Calculate cigarettes avoided
    cigarettesAvoided = dailyAmount * daysQuit;

    // Calculate money saved
    if (perPack > 0) {
      moneySaved = (cigarettesAvoided / perPack) * packPrice;
    } else {
      moneySaved = 0.0;
    }

    // Calculate time saved (assuming each cigarette takes 5 minutes to smoke)
    timeSaved = cigarettesAvoided * 5;
  }

  @override
  Widget build(BuildContext context) {
    String formattedDateTime =
        '${selectedDate.year}-${selectedDate.month}-${selectedDate.day} at ${selectedTime.hour}:${selectedTime.minute}';
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () async {
            await saveData();
            readData();
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Former smoker data',
          style: TextStyle(
            fontFamily: 'Eina',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                height: 50,
                child: Align(alignment: Alignment.topLeft, child: Text('$formattedDateTime', style: TextStyle(fontSize: 15, color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => _selectDate(context),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF1A1C1C),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Color(0xFF383839),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Pick date',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF64C397),
                              fontFamily: 'Eina',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                      onTap: () => _selectTime(context),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF1A1C1C),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Color(0xFF383839),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Pick time',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF64C397),
                              fontFamily: 'Eina',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller2,
                  onChanged: (value) async {
                    await saveData();
                    readData();
                  },
                  style: TextStyle(color: Colors.white),
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
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) async {
                    await saveData();
                    readData();
                  },
                  controller: controller3,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFF64C397),
                  decoration: InputDecoration(
                    labelText: 'Cigarette per pack',
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
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) async {
                    await saveData();
                    readData();
                  },
                  controller: controller4,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFF64C397),
                  decoration: InputDecoration(
                    labelText: 'Pack price',
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
                    suffixText: 'Rupees',
                    suffixStyle: TextStyle(
                      fontFamily: 'Eina',
                      color: Color(0xFF64C397),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1A1C1C),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Padding(

                            padding: const EdgeInsets.only(right: 70),
                            child: Text(
                              'Start it over again',
                              style: TextStyle(
                                fontFamily: 'Eina',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            'Reset your counter if you have\nrelapsed',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          data1 = DateTime.now().toIso8601String();
                          saveData();
                          readData();
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFF1A1C1C),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: Colors.red,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Reset',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontFamily: 'Eina',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Days since quitting: $daysQuit days',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              'Cigarettes avoided: $cigarettesAvoided',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              'Money saved: ${moneySaved.toStringAsFixed(2)} Rupees',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              'Time saved: $timeSaved minutes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
