import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quitit/Settings.dart';
import 'package:quitit/profile.dart';

class Frontnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF272728),
      height: 50,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 19,
            ),
            child: SizedBox(
                child: Image.asset('assets/img/IMG_20240514_160615.jpg')),
          ),
          SizedBox(
            width: 85,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => settings(),
                    ));
              },
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              )),
          SizedBox(
            width: 2,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ));
              },
              child: Image.asset(
                'assets/img/IMG_20240514_160917.jpg',
                width: 35,
              ))
        ],
      ),
    );
  }
}
