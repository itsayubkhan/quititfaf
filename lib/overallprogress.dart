import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quitit/widgets/overallmid.dart';

class overallprogress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,
          color: Colors.white,),),
        title: Text('Overall Progress',style: TextStyle(fontFamily: 'Eina',
            color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            overallmid(),
          ],
        ),
      ),
    );
  }
}