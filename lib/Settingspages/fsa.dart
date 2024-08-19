import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fsa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ClipRect(
          child: Container(
            color: Colors.transparent,
            height: 200,
            width: 200,
            child: Stack(
              children: [
                BackdropFilter(filter: ImageFilter.blur(sigmaX: 4.0,sigmaY: 4.0),child: Container(),),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.15),
                          Colors.white.withOpacity(0.05)
                        ]
                    )
                  ),
                ),
                Center(child: Text('kosra'),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
