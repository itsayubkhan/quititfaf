import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../Controllers/datasender.dart';

class for20weeks extends StatefulWidget{
  @override
  State<for20weeks> createState() => _CalenderState();
}

class _CalenderState extends State<for20weeks> {
  final gs = GetStorage();

  final DataController dataController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191B1B),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF191B1B),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,)
          , onPressed: () { Navigator.pop(context); },),
        actions: [
          Icon(Icons.share,color: Colors.white,),
          SizedBox(width: 30,)
        ],
      ),
      body: dataController.daysSinceQuitting >= 139
          ? Column(
        children: [
          SizedBox(height: 100,),
          Image.asset('assets/img/A/exercise.png', width: 200,),
          SizedBox(height: 20,),
          Text('20',style: TextStyle(fontSize: 16,
              color:
              Colors.white),),
          SizedBox(height: 5,),
          Text('No smoking for 20 weeks',style: TextStyle(fontSize: 16,color:
          Colors.grey[400]),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Image.asset('assets/img/IMG_20240515_144025.jpg',width: 40,),
              ),
            ],
          ),
        ],
      )
          : Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Image.asset('assets/img/A/exercise~2.png',width: 200,),
            SizedBox(height: 20,),
            Text('20',style: TextStyle(fontSize: 16,
                color:
                Colors.white),),
            SizedBox(height: 5,),
            Text('No smoking for 20 weeks',style: TextStyle(fontSize: 16,color:
            Colors.grey[400]),),
          ],
        ),
      ),
      bottomNavigationBar: dataController.daysSinceQuitting >= 139
          ? Container(
        height: 90,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF222223),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 70,
            width: 340,
            child: ListTile(
              trailing: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF44AE7E),
                ),
                child: Center(
                  child: Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Eina',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              title: Text(
                'You did it!',
                style: TextStyle(
                  fontFamily: 'Eina',
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Your health has improved',
                style: TextStyle(color: Colors.grey[400], fontSize: 13),
              ),
            ),
          ),
        ),
      )
          : Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Icon(Icons.lock,color: Colors.white,),
      ),
    );
  }
}