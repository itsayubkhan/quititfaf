import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget{
  final ImagePath;
  final double height;

  SquareTile({required this.ImagePath,required this.height,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 1.5,color: Color(0xFF3F3F3F)),
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFF121213),
      ),
      child: Image.asset(ImagePath,height: height,),
    );
  }

}