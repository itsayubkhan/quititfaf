import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quitit/AchievementPage.dart';
import 'package:quitit/Components/Squaretile.dart';
import 'package:quitit/Health.dart';
import 'package:quitit/Settingspages/Formersmokedata.dart';
import 'package:quitit/beatcravings.dart';
import 'package:quitit/overallprogress.dart';
import 'package:quitit/widgets/frontnav.dart';

import 'Controllers/datesaver.dart';

class Frontpage extends StatefulWidget {
  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  final gs = GetStorage();
  final DataSaver dateSaver = Get.find();

  void loadData() {
    if (gs.hasData('timesaved')) {
      dateSaver.timesaved.value = gs.read('timesaved');
    }
    if (gs.hasData('totalciggarettesSaved')) {
      dateSaver.totalciggarettesSaved.value = gs.read('totalciggarettesSaved');
    }
    if (gs.hasData('totalmoneysaved')) {
      dateSaver.totalmoneysaved.value = gs.read('totalmoneysaved');
    }
    if (gs.hasData('min')) {
      dateSaver.min.value = gs.read('min');
    }
    if (gs.hasData('hours')) {
      dateSaver.hours.value = gs.read('hours');
    }
    if (gs.hasData('secondsSinceQuitting')) {
      dateSaver.secondsSinceQuitting.value = gs.read('secondsSinceQuitting');
    }
  }

  void saveData() {
    gs.write('timesaved', dateSaver.timesaved.value);
    gs.write('totalciggarettesSaved', dateSaver.totalciggarettesSaved.value);
    gs.write('totalmoneysaved', dateSaver.totalmoneysaved.value);
    gs.write('min', dateSaver.min.value);
    gs.write('hours', dateSaver.hours.value);
    gs.write('secondsSinceQuitting', dateSaver.secondsSinceQuitting.value);
  }

  @override
  void initState() {
    super.initState();
    loadData();
    everAll([
      dateSaver.timesaved,
      dateSaver.totalciggarettesSaved,
      dateSaver.totalmoneysaved,
      dateSaver.min,
      dateSaver.hours,
      dateSaver.secondsSinceQuitting,
    ], (_) => saveData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121213),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Obx(() => Text('${dateSaver.secondsSinceQuitting}',style: TextStyle(color: Colors.white),)),
              Container(
                color: Color(0xFF272728),
                height: 35,
              ),
              Frontnav(),
              Image.asset('assets/img/IMG_20240611_214148.jpg', height: 150),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => overallprogress()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF1E1E1F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 400,
                  height: 200,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35, top: 20),
                          child: Text(
                            'Overall Progress',
                            style: TextStyle(
                                fontFamily: 'Eina',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SquareTile(
                                  ImagePath: 'assets/img/calendar.png',
                                  height: 30),
                              SizedBox(height: 5),
                              Obx(() => Text(
                                    '${dateSaver.timesaved.value}',
                                    style: TextStyle(
                                        fontFamily: 'Eina',
                                        color: Colors.white),
                                  )),
                              Text(
                                'days\n quit',
                                style: TextStyle(
                                    fontFamily: 'Eina',
                                    color: Colors.grey[400]),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SquareTile(
                                  ImagePath: 'assets/img/smoke.png',
                                  height: 30),
                              SizedBox(height: 5),
                              Obx(() => Text(
                                    '${dateSaver.totalciggarettesSaved.value}',
                                    style: TextStyle(
                                        fontFamily: 'Eina',
                                        color: Colors.white),
                                  )),
                              Text(
                                'cigarettes\n avoided',
                                style: TextStyle(
                                    fontFamily: 'Eina',
                                    color: Colors.grey[400]),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SquareTile(
                                  ImagePath: 'assets/img/coin.png', height: 30),
                              SizedBox(height: 5),
                              Obx(() => Text(
                                    '${dateSaver.totalmoneysaved.toStringAsFixed(0)}',
                                    style: TextStyle(
                                        fontFamily: 'Eina',
                                        color: Colors.white),
                                  )),
                              Text(
                                'rupees\nsaved',
                                style: TextStyle(
                                    fontFamily: 'Eina',
                                    color: Colors.grey[400]),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SquareTile(
                                  ImagePath: 'assets/img/clock.png',
                                  height: 30),
                              SizedBox(height: 5),
                              Obx(() => Text(
                                    '${dateSaver.hours.value}',
                                    style: TextStyle(
                                        fontFamily: 'Eina',
                                        color: Colors.white),
                                  )),
                              Text(
                                'won\nback',
                                style: TextStyle(
                                    fontFamily: 'Eina',
                                    color: Colors.grey[400]),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF1E1E1F),
                    borderRadius: BorderRadius.circular(10)),
                width: 400,
                height: 130,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35, top: 20),
                          child: Text(
                            'Community',
                            style: TextStyle(
                                fontFamily: 'Eina',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Image.asset(
                          'assets/img/solidarity.png',
                          width: 70,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'demodemo\nI know seems small but this is\nhuge '
                          'for me',
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AchievementPage(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF1E1E1F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 400,
                  height: 250,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 20),
                                child: Text(
                                  'Acheivements',
                                  style: TextStyle(
                                      fontFamily: 'Eina',
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              )),
                          SizedBox(
                            width: 150,
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'See all',
                                  style: TextStyle(
                                      color: Color(0xFF5FD480), fontSize: 14),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF222223),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 179,
                              width: 150,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Obx(() {
                                    if (dateSaver.timesaved >= 1) {
                                      return Image.asset(
                                        'assets/img/A/dumbbell.png', // Default image
                                        width: 80,
                                      );
                                    } else {
                                      return Image.asset(
                                        'assets/img/A/dumbbell~2.png', // Default image
                                        width: 80,
                                      );
                                    }
                                  }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Single Day Champion',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'No smoking\n  for 1 day',
                                    style: TextStyle(
                                        color: Colors.grey[200],
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF222223),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 175,
                              width: 150,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Obx(() {
                                    if (dateSaver.timesaved >= 1) {
                                      return Image.asset(
                                        'assets/img/A/exercise.png', // Default image
                                        width: 80,
                                      );
                                    } else {
                                      return Image.asset(
                                        'assets/img/A/exercise~2.png', // Default image
                                        width: 80,
                                      );
                                    }
                                  }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Double Day Dynamo',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'No smoking\n for 2 days',
                                    style: TextStyle(
                                        color: Colors.grey[200],
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => health(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF1E1E1F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 400,
                  height: 130,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 35, top: 20),
                            child: Text(
                              'Health Improvements',
                              style: TextStyle(
                                  fontFamily: 'Eina',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            'assets/img/seo-report.png',
                            width: 60,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'The carbon monoxide level\nin your blood drops '
                            'to\nnormal',
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 40),
                            child: Image.asset(
                              'assets/img/IMG_20240515_144025.jpg',
                              width: 33,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => beatcraving(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF1E1E1F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 400,
                  height: 130,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 35, top: 20),
                            child: Text(
                              'Beat your cravings',
                              style: TextStyle(
                                  fontFamily: 'Eina',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            'assets/img/lifestyle.png',
                            width: 60,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Small changes to your lifestyle\nto help you '
                            'beat the temptation\nto light up',
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
