import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UQN extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,)
          , onPressed: () { Navigator.pop(context); },),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/img/IMG_20240523_170739.jpg',width: 200,),
              SizedBox(
                height: 10,
              ),
              Text('        Boost your\n      commitment\nto a smoke-free life',
                style:
              TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Eina'),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ListTile(
                  title: Text('Recommendded by the',style: TextStyle
                    (fontSize:15,color: Colors.grey[400]),),
                  subtitle: Text('World health Organization',style: TextStyle
                    (fontSize:15,color: Colors.white)),
                  leading: Image.asset('assets/img/IMG_20240523_173145.jpg',width: 30,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ListTile(
                  title: Text('Featured as App Of The Day',style: TextStyle
                    (fontSize:15,color: Colors.grey[400]),),
                  subtitle: Text("on Apple's App Store",style: TextStyle
                    (fontSize:15,color: Colors.white)),
                  leading: Image.asset('assets/img/IMG_20240523_173123.jpg',width: 30,),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Icon(Icons.check,color: Colors.green,size: 15,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 84),
                          child: Text('Improve your health',style: TextStyle(
                              color: Colors.white,fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 6,),
                        Text('Unlock 65 more achievements and all the\nhealth '
                            'improvements',
                          style:
                        TextStyle(
                          fontSize: 12,
                            color: Colors.white
                        ),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Icon(Icons.check,color: Colors.green,size: 15,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 107),
                          child: Text('Create your own goals',style: TextStyle(
                              color: Colors.white,fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 6,),
                        Text('Plan your goals adding your own acheievements\nas'
                            ' you like',
                          style:
                          TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Icon(Icons.check,color: Colors.green,size: 15,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text('Unlimited access to the community',
                          style:
                        TextStyle(
                            color: Colors.white,fontSize: 16
                        ),),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text('Recieve Real-time notification and check all'
                              '\nthe messeges ever written',
                            style:
                            TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Icon(Icons.check,color: Colors.green,size: 15,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 107),
                          child: Text('Unlocked Calm breath',style: TextStyle(
                              color: Colors.white,fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('Use the calm breath assistant as much as you'
                              '\nneed to',
                            style:
                            TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Icon(Icons.check,color: Colors.green,size: 15,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 107),
                          child: Text('Forget the advertising',style:
                          TextStyle(
                              color: Colors.white,fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 6,),
                        Text('Say good buy to any kind of advertising for good',
                          style:
                          TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Icon(Icons.check,color: Colors.green,size: 15,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 107),
                          child: Text('Available everywhere',style: TextStyle(
                              color: Colors.white,fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Text('the new feature will be available on all your'
                              '\nAndriod and iOS devices',
                            style:
                            TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('PRO makes it easier',
                style:
                TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Eina'),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('Counter',style: TextStyle(fontSize: 16,color:
                    Colors.white),),
                    SizedBox(width: 164,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('All the acheivements',style: TextStyle(fontSize: 16,
                        color:
                    Colors.white),),
                    SizedBox(width: 69,),
                    Icon(Icons.lock_outlined,size: 15,color: Colors.grey[400],),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('Custom acheivements',style: TextStyle(fontSize: 16,
                        color:
                        Colors.white),),
                    SizedBox(width: 58,),
                    Icon(Icons.lock_outlined,size: 15,color: Colors.grey[400],),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('Real-time chat notifications',style: TextStyle
                      (fontSize: 16,
                        color:
                        Colors.white),),
                    SizedBox(width: 20,),
                    Icon(Icons.lock_outlined,size: 15,color: Colors.grey[400],),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('Chat mentions screen',style: TextStyle(fontSize: 16,
                        color:
                        Colors.white),),
                    SizedBox(width: 61,),
                    Icon(Icons.lock_outlined,size: 15,color: Colors.grey[400],),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('Unlimited chat scroll',style: TextStyle(fontSize: 16,
                        color:
                        Colors.white),),
                    SizedBox(width: 71,),
                    Icon(Icons.lock_outlined,size: 15,color: Colors.grey[400],),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('Calm breath assistant',style: TextStyle(fontSize: 16,
                        color:
                        Colors.white),),
                    SizedBox(width: 61,),
                    Icon(Icons.lock_outlined,size: 15,color: Colors.grey[400],),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Text('No Ads',style: TextStyle(fontSize: 16,
                        color:
                        Colors.white),),
                    SizedBox(width: 168,),
                    Icon(Icons.lock_outlined,size: 15,color: Colors.grey[400],),
                    SizedBox(width: 50,),
                    Icon(Icons.check,size: 15,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          height: 60,
          child: Container(
            child: Center(
              child: Text('Continue',
                style:
                TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Eina'),),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF44AE7E),
            ),
          ),
        ),
      ),
    );
  }
}