import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,)
          , onPressed: () { Navigator.pop(context); },),
        title: Text('Online backup',style: TextStyle(fontFamily: 'Eina',
          color:
          Colors.white,),),
      ),
      body: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/data-recovery.png',width: 180,),
            SizedBox(height: 20,),
            Text('Sign in needed',style: TextStyle(fontFamily: 'Eina',color: Colors.white ,
                fontSize: 20),),
            SizedBox(height: 10,),
            Text('Sign in to enable or restore online backup',style: TextStyle
              (color: Colors.white),),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 110,
              decoration: BoxDecoration(
                  color: Color(0xFF44AE7E),
                  borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('Sign in',style: TextStyle(fontSize: 15,
                    color: Colors.white,fontFamily: 'Eina'),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}