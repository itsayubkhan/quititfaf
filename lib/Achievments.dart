import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quitit/Acievmentspages/Clothesoff.dart';
import 'package:quitit/Acievmentspages/Saturday.dart';
import 'package:quitit/Acievmentspages/StepbyStep.dart';
import 'package:quitit/Acievmentspages/Superpowers.dart';
import 'package:quitit/Acievmentspages/calender.dart';
import 'package:quitit/Acievmentspages/infinitypage.dart';

class achievments extends StatelessWidget{
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
          padding: const EdgeInsets.only(right: 15),
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
                          (context) => Ip(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Image.asset('assets/img/IMG_20240515_143953'
                              '.jpg',width: 140,),
                          SizedBox(height: 20,),
                          Text('To infinity and b...',style: TextStyle
                            (color: Colors.white),),
                          Text(' 5 cigrattes\nnon-smoked',style: TextStyle
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
                          (context) => Calender(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Image.asset('assets/img/IMG_20240515_144058'
                              '.jpg',width: 130,),
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
                          (context) => Superpowers(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Image.asset('assets/img/IMG_20240519_141614.jpg',width:
                          120,),
                          SizedBox(height: 15,),
                          Text('Superpowers',style: TextStyle
                            (color: Colors.white),),
                          Text('   You won 60\nminsutes of life',style: TextStyle
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
                          (context) => Saturday(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset('assets/img/IMG_20240519_141655.jpg',width: 130,),
                          SizedBox(height: 21,),
                          Text('Saturday night f...',style: TextStyle
                            (color: Colors.white),),
                          Text('10 cigrattes\nnon-smoked',style: TextStyle
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
                          (context) => Clothesoff(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 22,),
                          Image.asset('assets/img/IMG_20240519_141713.jpg',width: 140,),
                          SizedBox(height: 27,),
                          Text('Clothes off',style: TextStyle
                            (color: Colors.white),),
                          Text('15 cigrattes\nnon-smoked',style: TextStyle
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
                          (context) => SBS(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Image.asset('assets/img/IMG_20240519_141728.jpg',width: 130,),
                          SizedBox(height: 23,),
                          Text('Step by Step',style: TextStyle
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
                          (context) => Ip(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Image.asset('assets/img/IMG_20240515_143953'
                              '.jpg',width: 140,),
                          SizedBox(height: 20,),
                          Text('To infinity and b...',style: TextStyle
                            (color: Colors.white),),
                          Text(' 5 cigrattes\nnon-smoked',style: TextStyle
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
                          (context) => Calender(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Image.asset('assets/img/IMG_20240515_144058'
                              '.jpg',width: 130,),
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
                          (context) => Superpowers(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Image.asset('assets/img/IMG_20240519_141614.jpg',width:
                          120,),
                          SizedBox(height: 15,),
                          Text('Superpowers',style: TextStyle
                            (color: Colors.white),),
                          Text('   You won 60\nminsutes of life',style: TextStyle
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
                          (context) => Saturday(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset('assets/img/IMG_20240519_141655.jpg',width: 130,),
                          SizedBox(height: 21,),
                          Text('Saturday night f...',style: TextStyle
                            (color: Colors.white),),
                          Text('10 cigrattes\nnon-smoked',style: TextStyle
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
                          (context) => Clothesoff(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 22,),
                          Image.asset('assets/img/IMG_20240519_141713.jpg',width: 140,),
                          SizedBox(height: 27,),
                          Text('Clothes off',style: TextStyle
                            (color: Colors.white),),
                          Text('15 cigrattes\nnon-smoked',style: TextStyle
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
                          (context) => SBS(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF222223),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 230,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Image.asset('assets/img/IMG_20240519_141728.jpg',width: 130,),
                          SizedBox(height: 23,),
                          Text('Step by Step',style: TextStyle
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