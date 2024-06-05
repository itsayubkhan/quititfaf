import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quitit/Achievments.dart';
import 'package:quitit/Acievmentspages/calender.dart';
import 'package:quitit/Acievmentspages/infinitypage.dart';
import 'package:quitit/Controllers/datasender.dart';
import 'package:quitit/Health.dart';
import 'package:quitit/beatcravings.dart';
import 'package:quitit/overallprogress.dart';
import 'package:quitit/widgets/frontnav.dart';

class Frontpage extends StatelessWidget{
  final gs = GetStorage();
  final DataController dataController = Get.find(); // Find the controller

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF121213),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Color(0xFF272728),height: 35,),
            Frontnav(),
            Image.asset('assets/img/IMG_20240514_172523.jpg',height: 232),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => overallprogress(),));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF1E1E1F),
                  borderRadius: BorderRadius.circular(10)
                ),
                width: 400,
                height: 170,
                child: Column(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 35,top: 20),
                      child: Text('Overall Progress',style:
                      TextStyle
                          (fontFamily: 'Eina',color: Colors.white,fontSize: 16),),
                    )),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset('assets/img/IMG_20240514_175142.jpg',
                                width: 38,),
                              SizedBox(height: 5,),
                              Obx(() => Text('${dataController.daysSinceQuitting}',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.white
                              ),),
                              ),
                              Text('days\n quit',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.grey[400]
                              ),),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset('assets/img/IMG_20240514_175210.jpg',
                                width: 38,),
                              Obx(() => Text('${dataController.cigarettesAvoided}',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.white
                                ),),
                              ),
                              Text('cigarettes\n avoided',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.grey[400]
                              ),),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset('assets/img/IMG_20240514_175234.jpg',
                                width: 38,),
                              SizedBox(height: 5,),
                              Obx(() => Text('${dataController.moneySaved.toStringAsFixed(0)}',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.white
                              ),),
                              ),
                              Text('rupees\nsaved',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.grey[400]
                              ),),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset('assets/img/IMG_20240514_175303.jpg',
                                width: 38,),
                              SizedBox(height: 5,),
                              Obx(() => Text('${dataController.timeSaved.toStringAsFixed(0)}',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.white
                              ),),
                              ),
                              Text('won\nback',style: TextStyle(
                                  fontFamily: 'Eina',color: Colors.grey[400]
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF1E1E1F),
                  borderRadius: BorderRadius.circular(10)
              ),
              width: 400,
              height: 130,
              child: Column(
                children: [
                  Align(alignment: Alignment.topLeft,child: Padding(
                    padding: const EdgeInsets.only(left: 35,top: 20),
                    child: Text('Community',style:
                    TextStyle
                      (fontFamily: 'Eina',color: Colors.white,fontSize: 16),),
                  )),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Image.asset('assets/img/IMG_20240515_142401.jpg',width:
                      80,),
                      SizedBox(width: 20,),
                      Text('demodemo\nI know seems small but this is\nhuge '
                          'for me',style: TextStyle(color: Colors
                          .grey[200],),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => achievments(),));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF1E1E1F),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 400,
                height: 250,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Align(alignment: Alignment.topLeft,child: Padding(
                          padding: const EdgeInsets.only(left: 35,top: 20),
                          child: Text('Acheivements',style:
                          TextStyle
                            (fontFamily: 'Eina',color: Colors.white,fontSize: 16),),
                        )),
                        SizedBox(width: 150,),
                        Align(alignment: Alignment.topRight,child: Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Text('See all',style:
                          TextStyle
                            (color: Color(0xFF5FD480),fontSize: 14),),
                        )),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => Ip(),));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF222223),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              height: 175,
                              width: 150,
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Image.asset('assets/img/IMG_20240515_143953'
                                      '.jpg',width: 110,),
                                  SizedBox(height: 10,),
                                  Text('To infinity and ...',style: TextStyle
                                    (color: Colors.white),),
                                  Text(' 5 cigrattes\nnon-smoked',style: TextStyle
                                    (color: Colors.grey[200],fontSize: 12),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => Calender(),));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF222223),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height: 175,
                              width: 150,
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Image.asset('assets/img/IMG_20240515_144058'
                                      '.jpg',width: 100,),
                                  SizedBox(height: 10,),
                                  Text('First cross on t...',style: TextStyle
                                    (color: Colors.white),),
                                  Text('No smoking\n  for 1 day',style: TextStyle
                                    (color: Colors.grey[200],fontSize: 12),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => health(),));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF1E1E1F),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 400,
                height: 130,
                child: Column(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 35,top: 20),
                      child: Text('Health Improvements',style:
                      TextStyle
                        (fontFamily: 'Eina',color: Colors.white,fontSize: 16),),
                    )),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Image.asset('assets/img/IMG_20240515_144123.jpg',width:
                        60,),
                        SizedBox(width: 20,),
                        Text('The carbon monoxide level\nin your blood drops '
                            'to\nnormal' ,
                          style:
                        TextStyle
                          (color: Colors.grey[200],),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,bottom: 40),
                          child: Image.asset('assets/img/IMG_20240515_144025.jpg',width:
                          33,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => beatcraving(),));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF1E1E1F),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 400,
                height: 130,
                child: Column(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Padding(
                      padding: const EdgeInsets.only(left: 35,top: 20),
                      child: Text('Beat your cravings',style:
                      TextStyle
                        (fontFamily: 'Eina',color: Colors.white,fontSize: 16),),
                    )),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Image.asset('assets/img/IMG_20240515_145942.jpg',width:
                        70,),
                        SizedBox(width: 20,),
                        Text('Small changes to your lifestyle\nto help you '
                            'beat the temptation\nto light up',
                          style:
                          TextStyle
                            (color: Colors.grey[200],),)
                      ],
                    ),
                  ],
                ),

              ),
            ),
            Obx(() => Column(
                children: [
                  Text('Cigarettes avoided: ${dataController.cigarettesAvoided}', style: TextStyle(color: Colors.white,fontFamily: 'Eina')),
                  Text('Money saved: ${dataController.moneySaved.toStringAsFixed(0)} Rupees', style: TextStyle(color: Colors.white,fontFamily: 'Eina')),
                  Text('Time saved: ${dataController.timeSaved.toStringAsFixed(0)} minutes', style: TextStyle(color: Colors.white,fontFamily: 'Eina')),
                  Text('Days since quitting: ${dataController.daysSinceQuitting}', style: TextStyle(color: Colors.white,fontFamily: 'Eina')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}