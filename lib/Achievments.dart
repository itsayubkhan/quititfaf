import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quitit/Acievmentspages/nosfor5day.dart';
import 'package:quitit/Acievmentspages/nosfor10day.dart';
import 'package:quitit/Acievmentspages/nosfor2day.dart';
import 'package:quitit/Acievmentspages/nosfor2week.dart';
import 'package:quitit/Acievmentspages/nosfor1day.dart';
import 'package:quitit/Acievmentspages/nosfor1week.dart';

import 'Controllers/datasender.dart';

class achievments extends StatelessWidget{

  final gs = GetStorage();

  final DataController dataController = Get.find();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () { Navigator.pop(context); },),
        actions: [Image.asset('assets/img/IMG_20240519_142420.jpg',width: 30,),
        SizedBox(width: 5,),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Text('7 / 82',style: TextStyle(fontSize: 18,color: Colors.white),),
        )
        ],
        title: Text('Achievments',style: TextStyle(fontFamily: 'Eina',color:
        Colors.white,),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => for5days(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 5
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                      Image.asset(
                        'assets/img/A/hismpa1.jpg', // Default image
                        width: 130,
                      ),
                          SizedBox(height: 20,),
                          Text('Home is where...',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 5 days',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                            Image.asset(
                                'assets/img/A/hismpa.jpg', // Default image
                                width: 130,
                              ),
                          SizedBox(height: 20,),
                          Text('Home is where...',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 5 days',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => for1day(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 1
                          ? Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/Ca1.jpg',width: 125,),
                          SizedBox(height: 23,),
                          Text('First cross on t...',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 1 day',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 15,),
                          Image.asset('assets/img/A/Ca.jpg',width: 125,),
                          SizedBox(height: 23,),
                          Text('First cross on t...',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 1 day',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => for1week(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 7
                          ? Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/FTR1.jpg',width: 125,),
                          SizedBox(height: 23,),
                          Text('Following the ro...',style: TextStyle
                            (color: Colors.white),),
                          Text(' No smoking\nfor one week',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/FTR.jpg',width: 125,),
                          SizedBox(height: 23,),
                          Text('Following the ro...',style: TextStyle
                            (color: Colors.white),),
                          Text(' No smoking\nfor one week',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => for10days(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 10
                          ? Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/lP1.jpg',width: 125,),
                          SizedBox(height: 23,),
                          Text('Less paper',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 10 days',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/lP.jpg',width: 125,),
                          SizedBox(height: 20,),
                          Text('Less paper',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 10 days',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => for2days(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 2
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/sts1.jpg',width: 125,),
                          SizedBox(height: 20,),
                          Text('Step by Step',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 2 day',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/sts.jpg',width: 125,),
                          SizedBox(height: 20,),
                          Text('Step by Step',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 2 day',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => for2weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 14
                          ? Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/ctc1.jpg',width: 125,),
                          SizedBox(height: 23,),
                          Text('Crush the calen...',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 2 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/ctc.jpg',width: 125,),
                          SizedBox(height: 20,),
                          Text('Crush the calen...',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 2 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),

            SizedBox(height: 5,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        child: Container(
          height: 60,
          width: 60,
          child: Center(
            child: Icon(Icons.add,color: Color(0xFFA1F2C4),),
          ),
          decoration: BoxDecoration(
              color: Color(0xFF015133),
              borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),
    );
  }
}