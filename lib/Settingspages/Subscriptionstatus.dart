import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subscriptionstatus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () { Navigator.pop(context); },),
        title: Text('Subscription status',style: TextStyle(fontFamily: 'Eina',
          color:
        Colors.white,),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your subscription is\n           inactive',style: TextStyle
              (fontFamily:
            'Eina',
                fontSize: 20,
                color:
                Colors.white),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('All the acheivements',style: TextStyle(
                    color:
                    Colors.white),),
                Icon(Icons.lock_outlined,color: Colors.red,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Custom acheivements',style: TextStyle(
                    color:
                    Colors.white),),
                Icon(Icons.lock_outlined,color: Colors.red,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Real-time chat notifications',style: TextStyle
                  (
                    color:
                    Colors.white),),
                Icon(Icons.lock_outlined,color: Colors.red,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Chat mentions screen',style: TextStyle(
                    color:
                    Colors.white),),
                Icon(Icons.lock_outlined,color: Colors.red,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Unlimited chat scroll',style: TextStyle(
                    color:
                    Colors.white),),
                Icon(Icons.lock_outlined,color: Colors.red,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Calm breath assistant',style: TextStyle(
                    color:
                    Colors.white),),
                Icon(Icons.lock_outlined,color: Colors.red,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No Ads',style: TextStyle(
                    color:
                    Colors.white),),
                Icon(Icons.lock_outlined,color: Colors.red,),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                color: Color(0xFF44AE7E),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('Upgrade QuitNow',style: TextStyle
                  (fontFamily:
                'Eina',
                    color:
                    Colors.white),),
              ),
            ),
            SizedBox(height: 15,),
            Text('Restore Subscriptions',style: TextStyle
              (fontFamily:
            'Eina',
                color:
                Colors.green),),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF262744),
                  borderRadius: BorderRadius.circular(10)
              ),
              height: 70,
              width: 340,
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image.asset('assets/img/IMG_20240525_143946.jpg',width: 65,),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Text('Available everywhere',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                      Text('The new features will be available on all\n'
                          'your andriod and iOS devices',
                        style: TextStyle
                          (color: Colors.white),),
                    ],
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
