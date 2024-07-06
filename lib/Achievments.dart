import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quitit/Acievmentspages/nosfor13weeks.dart';
import 'package:quitit/Acievmentspages/nosfor3weeks.dart';
import 'package:quitit/Acievmentspages/nosfor4weeks.dart';
import 'package:quitit/Acievmentspages/nosfor5day.dart';
import 'package:quitit/Acievmentspages/nosfor10day.dart';
import 'package:quitit/Acievmentspages/nosfor2day.dart';
import 'package:quitit/Acievmentspages/nosfor2week.dart';
import 'package:quitit/Acievmentspages/nosfor1day.dart';
import 'package:quitit/Acievmentspages/nosfor1week.dart';
import 'package:quitit/Acievmentspages/nosfor7weeks.dart';
import 'package:quitit/Acievmentspages/nosfor8weeks.dart';
import 'package:quitit/Acievmentspages/savemoney100rs.dart';

import 'Acievmentspages/nosfor10weeks.dart';
import 'Acievmentspages/nosfor11weeks.dart';
import 'Acievmentspages/nosfor12weeks.dart';
import 'Acievmentspages/nosfor14weeks.dart';
import 'Acievmentspages/nosfor15weeks.dart';
import 'Acievmentspages/nosfor16weeks.dart';
import 'Acievmentspages/nosfor17weeks.dart';
import 'Acievmentspages/nosfor18weeks.dart';
import 'Acievmentspages/nosfor19weeks.dart';
import 'Acievmentspages/nosfor20weeks.dart';
import 'Acievmentspages/nosfor21weeks.dart';
import 'Acievmentspages/nosfor22weeks.dart';
import 'Acievmentspages/nosfor23weeks.dart';
import 'Acievmentspages/nosfor24weeks.dart';
import 'Acievmentspages/nosfor25weeks.dart';
import 'Acievmentspages/nosfor26weeks.dart';
import 'Acievmentspages/nosfor27weeks.dart';
import 'Acievmentspages/nosfor28weeks.dart';
import 'Acievmentspages/nosfor29weeks.dart';
import 'Acievmentspages/nosfor30weeks.dart';
import 'Acievmentspages/nosfor31weeks.dart';
import 'Acievmentspages/nosfor32weeks.dart';
import 'Acievmentspages/nosfor33weeks.dart';
import 'Acievmentspages/nosfor34weeks.dart';
import 'Acievmentspages/nosfor35weeks.dart';
import 'Acievmentspages/nosfor36weeks.dart';
import 'Acievmentspages/nosfor37weeks.dart';
import 'Acievmentspages/nosfor38weeks.dart';
import 'Acievmentspages/nosfor39weeks.dart';
import 'Acievmentspages/nosfor40weeks.dart';
import 'Acievmentspages/nosfor5weeks.dart';
import 'Acievmentspages/nosfor6weeks.dart';
import 'Acievmentspages/nosfor9weeks.dart';
import 'Acievmentspages/savemoneyrs1000.dart';
import 'Acievmentspages/savemoneyrs1500.dart';
import 'Acievmentspages/savemoneyrs2000.dart';
import 'Acievmentspages/savemoneyrs2500.dart';
import 'Acievmentspages/savemoneyrs3000.dart';
import 'Acievmentspages/savemoneyrs3500.dart';
import 'Acievmentspages/savemoneyrs4000.dart';
import 'Acievmentspages/savemoneyrs4500.dart';
import 'Acievmentspages/savemoneyrs500.dart';
import 'Acievmentspages/savemoneyrs5000.dart';
import 'Acievmentspages/savemoneyrs6000.dart';
import 'Controllers/datasender.dart';

class achievments extends StatelessWidget{

  final gs = GetStorage();

  final DataController dataController = Get.find();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
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
                          (context) => rs100(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 100
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset(
                            'assets/img/A/watering-plants.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save100',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 100',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset(
                            'assets/img/A/watering-plants~2.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save100',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 100',style: TextStyle
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
                          (context) => rs500(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 500
                          ? Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 500',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 500',style: TextStyle
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
                          (context) => rs1000(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 1000
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset(
                            'assets/img/A/watering-plants.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save1000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 1000',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset(
                            'assets/img/A/watering-plants~2.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save1000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 1000',style: TextStyle
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
                          (context) => rs1500(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 1500
                          ? Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save1500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 1500',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save1500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 1500',style: TextStyle
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
                          (context) => rs2000(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 2000
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset(
                            'assets/img/A/watering-plants.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save2000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 2000',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset(
                            'assets/img/A/watering-plants~2.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save2000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 2000',style: TextStyle
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
                          (context) => rs2500(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 2500
                          ? Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save2500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 2500',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save2500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 2500',style: TextStyle
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
                          (context) => rs3000(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 3000
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset(
                            'assets/img/A/watering-plants.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save3000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 3000',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset(
                            'assets/img/A/watering-plants~2.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save3000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 3000',style: TextStyle
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
                          (context) => rs3500(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 3500
                          ? Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save3500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 3500',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save3500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 3500',style: TextStyle
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
                          (context) => rs4000(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 4000
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset(
                            'assets/img/A/watering-plants.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save4000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 4000',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset(
                            'assets/img/A/watering-plants~2.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save4000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 4000',style: TextStyle
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
                          (context) => rs4500(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 4500
                          ? Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save4500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 4500',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save4500',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 4500',style: TextStyle
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
                          (context) => rs5000(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 5000
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset(
                            'assets/img/A/watering-plants.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save5000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 5000',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset(
                            'assets/img/A/watering-plants~2.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('save5000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 5000',style: TextStyle
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
                          (context) => rs6000(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.moneySaved >= 6000
                          ? Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save6000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 6000',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('save6000',style: TextStyle
                            (color: Colors.white),),
                          Text('Save money Rs 6000',style: TextStyle
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
                            'assets/img/A/watering-plants.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('Five-Day Fortress',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 5 days',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset(
                            'assets/img/A/watering-plants~2.png', // Default image
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          Text('Five-Day Fortress',style: TextStyle
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
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('Single Day Champion',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 1 day',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 28,),
                          Image.asset('assets/img/A/dumbbell~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('Single Day Champion',style: TextStyle
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
                          Image.asset('assets/img/A/dumble.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('Seven-Day Sentinel',style: TextStyle
                            (color: Colors.white),),
                          Text(' No smoking\nfor one week',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/dumble~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('Seven-Day Sentinel',style: TextStyle
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
                          Image.asset('assets/img/A/no-smoking.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('Ten-Day Trailblazer',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 10 days',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 23,),
                          Image.asset('assets/img/A/no-smoking~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('Ten-Day Trailblazer',style: TextStyle
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
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('Double Day Dynamo',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 2 day',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('Double Day Dynamo',style: TextStyle
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
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('Fortnight Fighter',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 2 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('Fortnight Fighter',style: TextStyle
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
            Row(
              children: [
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => for3weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 21
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('3',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 3 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('3',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 3 weeks',style: TextStyle
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
                          (context) => for4weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 28
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('4',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 4 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('4',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 4 weeks',style: TextStyle
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
                          (context) => for5weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 35
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('5',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 5 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('5',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 5 weeks',style: TextStyle
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
                          (context) => for6weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 42
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('6',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 6 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('6',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 6 weeks',style: TextStyle
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
                          (context) => for7weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 49
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('7',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 7 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('7',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 7 weeks',style: TextStyle
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
                          (context) => for8weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 56
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('8',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 8 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('8',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 8 weeks',style: TextStyle
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
                          (context) => for9weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 63
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('9',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 9 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('9',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 9 weeks',style: TextStyle
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
                          (context) => for10weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 70
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('10',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 10 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('10',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 10 weeks',style: TextStyle
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
                          (context) => for11weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 77
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('11',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 11 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('11',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n  for 11 weeks',style: TextStyle
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
                          (context) => for12weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 84
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('12',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 12 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('12',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\n for 12 weeks',style: TextStyle
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
                          (context) => for13weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 91
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('13',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 13 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('13',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 13 weeks',style: TextStyle
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
                          (context) => for14weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 98
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('14',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 14 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('14',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 14 weeks',style: TextStyle
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
                          (context) => for15weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 105
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('15',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 15 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('15',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 15 weeks',style: TextStyle
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
                          (context) => for16weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 112
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('16',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 16 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('16',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 16 weeks',style: TextStyle
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
                          (context) => for17weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 119
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('17',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 17 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('17',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 17 weeks',style: TextStyle
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
                          (context) => for18weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 126
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('18',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 18 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('18',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 18 weeks',style: TextStyle
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
                          (context) => for19weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 132
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('19',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 19 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('19',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 19 weeks',style: TextStyle
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
                          (context) => for20weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 139
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('18',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 18 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('16',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 16 weeks',style: TextStyle
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
                          (context) => for21weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 146
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('21',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 21 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('21',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 21 weeks',style: TextStyle
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
                          (context) => for22weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 153
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('22',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 22 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('22',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 22 weeks',style: TextStyle
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
                          (context) => for23weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 160
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('23',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 23 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('23',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 23 weeks',style: TextStyle
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
                          (context) => for24weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 167
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('24',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 24 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('24',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 24 weeks',style: TextStyle
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
                          (context) => for25weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 174
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('25',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 25 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('25',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 25 weeks',style: TextStyle
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
                          (context) => for26weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 181
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('26',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 26 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('26',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 26 weeks',style: TextStyle
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
                          (context) => for27weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 188
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('27',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 27 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('27',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 27 weeks',style: TextStyle
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
                          (context) => for28weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 195
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('28',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 28 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('28',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 28 weeks',style: TextStyle
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
                          (context) => for29weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 203
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('29',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 29 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('29',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 29 weeks',style: TextStyle
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
                          (context) => for30weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 210
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('30',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 30 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('30',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 30 weeks',style: TextStyle
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
                          (context) => for31weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 217
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('31',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 31 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('31',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 31 weeks',style: TextStyle
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
                          (context) => for32weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 224
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('32',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 32 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('32',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 32 weeks',style: TextStyle
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
                          (context) => for33weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 231
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('33',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 33 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('33',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 33 weeks',style: TextStyle
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
                          (context) => for34weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 238
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('34',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 34 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('34',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 34 weeks',style: TextStyle
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
                          (context) => for35weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 245
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('35',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 35 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('35',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 35 weeks',style: TextStyle
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
                          (context) => for36weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 252
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('36',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 36 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('36',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 36 weeks',style: TextStyle
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
                          (context) => for37weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 259
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('37',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 37 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('37',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 37 weeks',style: TextStyle
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
                          (context) => for38weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 266
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('38',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 38 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('38',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 38 weeks',style: TextStyle
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
                          (context) => for39weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child:  dataController.daysSinceQuitting >= 273
                          ? Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('39',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 39 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 35,),
                          Image.asset('assets/img/A/exercise~2.png',width: 100,),
                          SizedBox(height: 20,),
                          Text('39',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 39 weeks',style: TextStyle
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
                          (context) => for40weeks(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: dataController.daysSinceQuitting >= 280
                          ? Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('40',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 40 weeks',style: TextStyle
                            (color: Colors.grey[200],fontSize: 12),),
                        ],
                      )
                          : Column(
                        children: [
                          SizedBox(height: 32,),
                          Image.asset('assets/img/A/training~2.png',width: 100,),
                          SizedBox(height: 23,),
                          Text('40',style: TextStyle
                            (color: Colors.white),),
                          Text('No smoking\nfor 40 weeks',style: TextStyle
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
      floatingActionButton: FloatingActionButton(onPressed: () { },
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
