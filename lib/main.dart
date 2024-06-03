import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quitit/Achievments.dart';
import 'package:quitit/Acievmentspages/Clothesoff.dart';
import 'package:quitit/Acievmentspages/Saturday.dart';
import 'package:quitit/Acievmentspages/StepbyStep.dart';
import 'package:quitit/Acievmentspages/Superpowers.dart';
import 'package:quitit/Acievmentspages/calender.dart';
import 'package:quitit/Acievmentspages/infinitypage.dart';
import 'package:quitit/Health.dart';
import 'package:quitit/Settings.dart';
import 'package:quitit/Settingspages/Advancedsettings.dart';
import 'package:quitit/Settingspages/Formersmokerdata.dart';
import 'package:quitit/Settingspages/Signin.dart';
import 'package:quitit/Settingspages/Subscriptionstatus.dart';
import 'package:quitit/Settingspages/Upgradequitnow.dart';
import 'package:quitit/Settingspages/online%20backup.dart';
import 'package:quitit/beatcravings.dart';
import 'package:quitit/community.dart';
import 'package:quitit/frontpage.dart';
import 'package:quitit/overallprogress.dart';
import 'package:quitit/profile.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Frontpage(data1: '1', data2: '2', data3: '3', data4: '4',),
    );
  }
}

