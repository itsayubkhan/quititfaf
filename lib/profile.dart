import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1C1C),
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFF272728),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Eina',
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 35,
              ),
              Image.asset(
                'assets/img/IMG_20240520_144847.jpg',
                width: 140,
              ),
              SizedBox(
                width: 35,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, right: 40),
                    child: Text(
                      'Time smoke free',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '5',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: ''
                                    'Eina',
                                color: Colors.white),
                          ),
                          Text(
                            'days',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            '23',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Eina',
                                color: Colors.white),
                          ),
                          Text(
                            'hours',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            '17',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Eina',
                                color: Colors.white),
                          ),
                          Text(
                            'minutes',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/img/IMG_20240520_143805.jpg',
                        width: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('2', style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/img/IMG_20240520_143826.jpg',
                        width: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 60,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 340,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFF222223),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/IMG_20240520_143731.jpg',
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Save your Progress',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 115,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF44AE7E),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Eina'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Image.asset(
            'assets/img/save.png',
            width: 130,
          ),
          SizedBox(height: 30,),
          Text(
            '  Create an account\nto save your progress',
            style: TextStyle(fontFamily: 'Eina', color: Color(0xFF59B78B)),
          ),
        ],
      ),
    );
  }
}
