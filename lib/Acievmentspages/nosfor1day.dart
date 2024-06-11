import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quitit/Acievmentspages/nosfor1week.dart';

import '../Controllers/datasender.dart';



class for1day extends StatefulWidget{
  @override
  State<for1day> createState() => _CalenderState();
}

class _CalenderState extends State<for1day> {
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
      body: dataController.daysSinceQuitting >= 1
          ? Column(
        children: [
          SizedBox(height: 100,),
          Image.asset('assets/img/A/Ca1.jpg', width: 200,),
          SizedBox(height: 20,),
          Text('First cross on the calendar',style: TextStyle(fontSize: 16,
              color:
              Colors.white),),
          SizedBox(height: 5,),
          Text('No smoking for 1 day',style: TextStyle(fontSize: 16,color:
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
            Image.asset('assets/img/A/Ca.jpg',width: 200,),
            SizedBox(height: 20,),
            Text('First cross on the calendar',style: TextStyle(fontSize: 16,
                color:
                Colors.white),),
            SizedBox(height: 5,),
            Text('No smoking for 1 day',style: TextStyle(fontSize: 16,color:
            Colors.grey[400]),),
          ],
           ),
        ),
      bottomNavigationBar: dataController.daysSinceQuitting >= 1
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