import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF1A1C1C),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,)
          , onPressed: () { Navigator.pop(context); },),
      ),
      body: Column(
        children: [
          Image.asset('assets/img/IMG_20240523_162220.jpg',width: 220,),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFD24738),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Image.asset('assets/img/IMG_20240523_162314.jpg',width: 40,),
                  SizedBox(width: 42,),
                  Text('Sign in with Google' ,style: TextStyle(fontSize: 15,
                      color: Colors.white,fontFamily: 'Eina'),),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF4066B2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 26,),
                  Image.asset('assets/img/IMG_20240523_162341.jpg',width: 30,),
                  SizedBox(width: 45,),
                  Text('Sign in with Facebook' ,style: TextStyle(fontSize: 15,
                      color: Colors.white,fontFamily: 'Eina'),),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF1A1C1C),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Color(0xFF383839),
                )
              ),
              child: Center(
                child: Text('Sign in with email' ,style: TextStyle(fontSize: 15,
                    color: Color(0xFF52CD93),fontFamily: 'Eina'),),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFF1A1C1C),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF383839),
                  )
              ),
              child: Center(
                child: Text('Create a new account' ,style: TextStyle(fontSize:
                15,
                    color: Color(0xFF52CD93),fontFamily: 'Eina'),),
              ),
            ),
          ),
        ],
      ),
    );
  }

}