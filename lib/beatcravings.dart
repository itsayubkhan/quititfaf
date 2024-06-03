import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class beatcraving extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121213),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,
          color: Colors.white,),),
        title: Text('Beat your cravings',style: TextStyle(fontFamily: 'Eina',
            color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius
                .circular(15),topRight: Radius.circular(15)),
                child: Image
                .asset
              ('assets/img/IMG_20240516_162002.jpg')),
            Container(
              color: Color(0xFF1E1E1F),
              width: 420,
              height: 100,
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Align(alignment: Alignment.topLeft,child: Padding(
                    padding: const EdgeInsets.only(top: 10,
                    left: 20),
                    child: Text('Tips of the day',style: TextStyle(fontFamily:
                    'Eina',fontSize: 17,color: Colors.white),),
                  )),
                  Align(alignment: Alignment.topLeft,child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                    child: Text('Small changes to your life '
                        'style to help '
                        'you beat the\ntemptation to light up',style: TextStyle
                      (color: Colors.grey[400]),),
                  ))
                ],
              ),
            ),
            SizedBox(height: 10,),
            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius
                .circular(15),topRight: Radius.circular(15)),
                child: Image
                    .asset
                  ('assets/img/IMG_20240516_162013.jpg')),
            Container(
              color: Color(0xFF1E1E1F),
              width: 420,
              height: 100,
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Align(alignment: Alignment.topLeft,child: Padding(
                    padding: const EdgeInsets.only(top: 10,
                        left: 20),
                    child: Text('Quit lines',style: TextStyle(fontFamily:
                    'Eina',fontSize: 17,color: Colors.white),),
                  )),
                  Align(alignment: Alignment.topLeft,child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                    child: Text('Call your national quit line as soon as you '
                        'feel the\nurge to smoke',style:
                    TextStyle
                      (color: Colors.grey[400]),),
                  ))
                ],
              ),
            ),
            SizedBox(height: 10,),
            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius
                .circular(15),topRight: Radius.circular(15)),
                child: Image
                    .asset
                  ('assets/img/IMG_20240516_162049.jpg')),
            Container(
              color: Color(0xFF1E1E1F),
              width: 420,
              height: 109,
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Align(alignment: Alignment.topLeft,child: Padding(
                    padding: const EdgeInsets.only(top: 10,
                        left: 20),
                    child: Text('Calm breath',style: TextStyle(fontFamily:
                    'Eina',fontSize: 17,color: Colors.white),),
                  )),
                  Align(alignment: Alignment.topLeft,child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                    child: Text('This technique can help you slow down your'
                        '\nbreathing,reduce your anxiety and manage '
                        'your\ncraving',style:
                    TextStyle
                      (color: Colors.grey[400]),),
                  ))
                ],
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

}