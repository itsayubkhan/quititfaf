import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:quitit/Components/MyTextfield.dart';
import 'package:quitit/Controllers/datepicker.dart';
import 'package:quitit/Settingspages/fsa.dart';
import 'package:quitit/Controllers/datesaver.dart';
import 'dart:async';

class datapage extends StatefulWidget {
  @override
  State<datapage> createState() => _datapageState();
}

class _datapageState extends State<datapage> {
  final Store = GetStorage();
  DateTime? selectedDate;
  Timer? _timer;
  DateTime? quittingDate;
  final DataSaver dateSaver = Get.find();

  int totalciggarettesSaved = 0;
  double totalmoneysaved = 0.0;
  int timesaved = 0;
  int min = 0;
  int hours = 0;
  String daysSinceQuitting = '0 days';
  String hoursSinceQuitting = '0 hours';
  String minutesSinceQuitting = '0 minutes';
  String secondsSinceQuitting = '0 seconds';

  Timer? dailyUpdateTimer; // Timer variable

  @override
  void initState() {
    super.initState();
    _startTimer();
    readData();
    if (DateController.text.isNotEmpty && quittingDate != null) {
      _startTimer();
    }
    if (DateController.text.isNotEmpty) {
      selectedDate = DateFormat('yyyy-MM-dd hh:mm a').parse(DateController.text);
      calculate();
    }
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  TextEditingController DailyAmount = TextEditingController();
  TextEditingController PerPack = TextEditingController();
  TextEditingController PackPrice = TextEditingController();
  TextEditingController DateController = TextEditingController();

  void savedata() {
    Store.write('DailyAmount', DailyAmount.text);
    Store.write('PerPack', PerPack.text);
    Store.write('PackPrice', PackPrice.text);
    Store.write('DateController', DateController.text);
  }


  void readData() {
    DailyAmount.text = Store.read('DailyAmount') ?? '';
    PerPack.text = Store.read('PerPack') ?? '';
    PackPrice.text = Store.read('PackPrice') ?? '';
    DateController.text = Store.read('DateController') ?? '';
    if (DateController.text.isNotEmpty) {
      quittingDate = DateFormat('yyyy-MM-dd hh:mm a').parse(DateController.text);
    }
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (quittingDate != null) {
        final now = DateTime.now();
        final difference = now.difference(quittingDate!);

        setState(() {
          daysSinceQuitting = '${difference.inDays} days';
          hoursSinceQuitting = '${(difference.inHours % 24)} hours';
          minutesSinceQuitting = '${(difference.inMinutes % 60)} minutes';
          secondsSinceQuitting = '${(difference.inSeconds % 60)} seconds';
        });

        dateSaver.UpdateData(
            totalciggarettesSaved,
            totalmoneysaved,
            timesaved,
            min,
            hours,
            secondsSinceQuitting
        );
      }
    });
  }


  void calculate() {
    if (selectedDate != null && DateController.text.isNotEmpty) {
      int dailyAmount = int.parse(DailyAmount.text);
      int perPack = int.parse(PerPack.text);
      int packPrice = int.parse(PackPrice.text);
      DateTime quitDate = DateFormat('yyyy-MM-dd hh:mm a').parse(DateController.text);
      int timeTakenPerCigarette = 5; // time taken per cigarette in minutes

      // Calculate the number of days since quitting
      timesaved = DateTime.now().difference(selectedDate!).inDays;

      // Calculate the total number of cigarettes saved and money saved
      totalciggarettesSaved = dailyAmount * timesaved;
      double totalMoneySpentPerDay = (dailyAmount / perPack) * packPrice;
      totalmoneysaved = totalMoneySpentPerDay * timesaved;

      // Calculate total time saved in minutes
      int totalMinutesSaved = totalciggarettesSaved * timeTakenPerCigarette;

      // Calculate hours and minutes from total minutes
      hours = totalMinutesSaved ~/ 60; // Integer division to get hours
      min = totalMinutesSaved % 60;
      // Print the results
      print('Total cigarettes saved: $totalciggarettesSaved');
      print('Total money saved: ${totalmoneysaved.toStringAsFixed(0)}');
      print('Days since quitting: $timesaved');
      print('Total time saved: $hours hours $min minutes');
      print('Quit date: ${DateController.text}');
    } else {
      print('Please select a date or enter a valid date');
      print('DateController text: ${DateController.text}');
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      daysSinceQuitting,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      hoursSinceQuitting,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      minutesSinceQuitting,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      secondsSinceQuitting,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: MyTextField(
                  onchange: () {},
                  controller: DateController,
                  label: 'Date Time',
                  Style: TextStyle(color: Colors.white),
                  readonly: true,
                  ontap: () async {
                    TimeOfDay initialTime = TimeOfDay.fromDateTime(
                        DateFormat('yyyy-MM-dd hh:mm a')
                            .parse(DateController.text));
                    DateTime? PickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      initialDate: DateFormat('yyyy-MM-dd').parse(DateController.text),
                      lastDate: DateTime.now(),
                    );
                    if (PickedDate != null) {
                      TimeOfDay? PickedTime = await showTimePicker(
                        context: context,
                        initialTime: initialTime,
                      );
                      if (PickedTime != null) {
                        String dateTimeString =
                            '${DateFormat('yyyy-MM-dd').format(PickedDate)} ${PickedTime.format(context)}';
                        DateTime parsedDateTime =
                        DateFormat('yyyy-MM-dd hh:mm a')
                            .parse(dateTimeString);
                        DateController.text = dateTimeString;
                        setState(() {
                          quittingDate = parsedDateTime;
                        });
                        _startTimer(); // Restart the timer with the new date
                      }
                    }
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: MyTextField(
                  onchange: () {
                    savedata();
                  },
                  controller: DailyAmount,
                  label: 'Daily Ciggarettes intake',
                  Style: TextStyle(color: Colors.white),
                  ontap: () {
                  },
                  readonly: false,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: MyTextField(
                  onchange: () {
                    savedata();
                  },
                  controller: PerPack,
                  Style: TextStyle(color: Colors.white),
                  label: 'Ciggeratte per pack',
                  ontap: () {},
                  readonly: false,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: MyTextField(
                  onchange: () {
                    savedata();
                  },
                  Style: TextStyle(color: Colors.white),
                  controller: PackPrice,
                  label: 'Pack price (rupees)',
                  ontap: () {},
                  readonly: false,
                ),
              ),
              Text(
                '${DailyAmount.text},${PerPack.text},${PackPrice.text}',
                style: TextStyle(color: Colors.red),
              ),
              ElevatedButton(
                onPressed: () {
                  savedata();
                  calculate();
                },
                child: Text('save the data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}