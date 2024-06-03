import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class overallmid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Cigarettes avoided',style: TextStyle(fontFamily: 'Eina',fontSize: 18,
                color: Colors
                  .white,),),
            ),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('Per day',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('9',style: TextStyle(color: Colors.white,fontSize:
            15),),
          ),
          ListTile(
            title: Text('Per week',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('63',style: TextStyle(color: Colors.white,fontSize:
            15),),
          ),
          ListTile(
            title: Text('Per month',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('273',style: TextStyle(color: Colors.white,fontSize:
            15),),
          ),
          ListTile(
            title: Text('Per year',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('3,286',style: TextStyle(color: Colors.white,
                fontSize:
            15),),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Money saved',style: TextStyle(fontFamily: 'Eina',
                fontSize: 18,
                color: Colors
                    .white,),),
            ),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('Per day',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('Rs 90',style: TextStyle(color: Colors.white,
                fontSize:
            15),),
          ),
          ListTile(
            title: Text('Per week',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('Rs630',style: TextStyle(color: Colors.white,
                fontSize:
            15),),
          ),
          ListTile(
            title: Text('Per month',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('Rs2,739',style: TextStyle(color: Colors.white,
                fontSize:
            15),),
          ),
          ListTile(
            title: Text('Per year',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('Rs32,286',style: TextStyle(color: Colors.white,
                fontSize:
                15),),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Time won back',style: TextStyle(fontFamily: 'Eina',
                fontSize: 18,
                color: Colors
                    .white,),),
            ),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('Per day',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('54 minutes',style: TextStyle(color: Colors.white,
                fontSize:
                15),),
          ),
          ListTile(
            title: Text('Per week',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('6 hours and 16 minutes',style: TextStyle(color:
            Colors
                .white,
                fontSize:
                15),),
          ),
          ListTile(
            title: Text('Per month',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('1 day and 3 hours',style: TextStyle(color: Colors
                .white,
                fontSize:
                15),),
          ),
          ListTile(
            title: Text('Per year',style: TextStyle(color: Colors.white,
                fontSize: 15),),
            trailing: Text('13 days and 16 hours',style: TextStyle(color: Colors
                .white,
                fontSize:
                15),),
          ),
          SizedBox(height: 10,),
          Image.asset('assets/img/IMG_20240516_161630.jpg',width: 200,)
        ],
      ),
    );
  }
}