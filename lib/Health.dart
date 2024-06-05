import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class health extends StatelessWidget {
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
        actions: [
          Image.asset(
            'assets/img/IMG_20240525_155535.jpg',
            width: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              '2 / 8',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ],
        title: Text(
          'Achievments',
          style: TextStyle(
            fontFamily: 'Eina',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF60AFFE),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'The carbon monoxide level in your blood\ndrops to '
                    'normal',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2A18C),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 68,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'Your heart rate and blood pressure drop',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF60AFFE),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'The carbon monoxide level in your blood\ndrops to '
                    'normal',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2A18C),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 68,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'Your heart rate and blood pressure drop',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF60AFFE),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'The carbon monoxide level in your blood\ndrops to '
                    'normal',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2A18C),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 68,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'Your heart rate and blood pressure drop',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF60AFFE),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'The carbon monoxide level in your blood\ndrops to '
                    'normal',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2A18C),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 68,
                ),
                Text(
                  '100',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'Your heart rate and blood pressure drop',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Based on the World Health Organization data',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
            Image.asset(
              'assets/img/IMG_20240525_161818.jpg',
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
