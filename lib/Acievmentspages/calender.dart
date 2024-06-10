import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../Controllers/datasender.dart';



class Calender extends StatefulWidget{
  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  final gs = GetStorage();

  @override
  void initState() {
    super.initState();
    CAas();
  }

  final DataController dataController = Get.find();

  void CAas() {
    int daysSinceQuitting = dataController.daysSinceQuitting.value;
    bool achievementUnlocked = gs.read('asfafs1') ?? false; // Add null check here
    if (daysSinceQuitting >= 3 && !achievementUnlocked) {
      gs.write('asfafs1', true);
      Get.snackbar(
        'Achievement Unlocked',
        'You have unlocked a new achievement!',
      );
    }
  }


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
          SizedBox(width: 10,)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(child: Obx(() {
            CAas();
            if (gs.read('asfafs1') == true) {
              return Image.asset('assets/img/Screenshot_2024-05-19-14-51-35-15.jpg',
                width: 200,);
            } else {
              return Image.asset('safsaf');
            }
          }),),
          SizedBox(height: 20,),
          Text('First cross on the calendar',style: TextStyle(fontSize: 16,
              color:
          Colors.white),),
          SizedBox(height: 5,),
          Text('No smoking for 1 day',style: TextStyle(fontSize: 16,color:
          Colors.white),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Image.asset('assets/img/IMG_20240515_144025.jpg',width: 40,),
              ),
              Text('May 15,2024 at 04:38',style: TextStyle(color: Colors
                  .grey[400],),)
            ],
          )
        ],
      ),
      bottomNavigationBar: Obx(() {
        CAas();
        if (gs.read('CA') == true) {
          return Container(
            height: 90,
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF222223),
                      borderRadius: BorderRadius.circular(10)
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
                        child: Text('Share',style: TextStyle(color: Colors.white,
                            fontFamily: 'Eina',fontSize: 14),),
                      ),
                    ),
                    title: Text('You did it!',style: TextStyle(fontFamily: 'Eina',
                        color: Colors.white
                    ),),
                    subtitle: Text('Your health has improved',style: TextStyle
                      (color: Colors.grey[400],fontSize: 13),),
                  )
              ),
            ),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}