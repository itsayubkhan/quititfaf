import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Advancedsettings extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () { Navigator.pop(context); },),
        title: Text('Advanced settings',style: TextStyle(fontFamily: 'Eina',
          color:
          Colors.white,),),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/img/IMG_20240525_151308.jpg',width: 220,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Image.asset('assets/img/IMG_20240525_151320.jpg',width: 180,),
          ),
        ],
      ),
    );
  }
}