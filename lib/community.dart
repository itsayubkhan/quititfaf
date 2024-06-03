import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quitit/widgets/communitybottombar.dart';

class Community extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,)
          , onPressed: () { Navigator.pop(context); },),
        title: Text('Community',style: TextStyle(fontFamily: 'Eina',color: Colors.white),),
        actions: [Image.asset('assets/img/IMG_20240517_152008.jpg'),
          Padding(
            padding: const EdgeInsets.only(bottom: 4,right: 20),
            child: Image.asset('assets/img/IMG_20240514_160917.jpg',width: 30,),
          )],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 60,
          child: Row(
            children: [
              Image.asset('assets/img/IMG_20240517_151923.jpg'),
              Container(
                width: 280,
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type a messege',
                      hintStyle: TextStyle(color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 0.5,
                              color: Colors.grey
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 0.5,
                              color: Colors.grey
                          )
                      )
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Image.asset('assets/img/IMG_20240517_151937.jpg',width: 50,)
            ],
          ),
        ),
      ),
    );
  }

}