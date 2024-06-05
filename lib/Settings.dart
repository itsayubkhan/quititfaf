import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quitit/Settingspages/Advancedsettings.dart';
import 'package:quitit/Settingspages/Signin.dart';
import 'package:quitit/Settingspages/Subscriptionstatus.dart';
import 'package:quitit/Settingspages/Upgradequitnow.dart';
import 'package:quitit/Settingspages/online%20backup.dart';
import 'package:quitit/Settingspages/Formersmokedata.dart';

class settings extends StatelessWidget {
  final userdata = GetStorage();
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
            'Preferences',
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
              Padding(
                padding: const EdgeInsets.only(right: 145),
                child: Text(
                  'Quitter information',
                  style: TextStyle(
                      fontFamily: 'Eina', color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyPage(),
                            ));
                      },
                      child: ListTile(
                        leading: Image.asset(
                          'assets/img/IMG_20240521_165532.jpg',
                          width: 32,
                        ),
                        title: Text(
                          'Formers smoke data',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF36A26F),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OB(),
                            ));
                      },
                      child: ListTile(
                        leading: Image.asset(
                          'assets/img/IMG_20240521_165543.jpg',
                          width: 32,
                        ),
                        title: Text(
                          'Online Backup',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF36A26F),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/img/IMG_20240521_165554.jpg',
                        width: 32,
                      ),
                      title: Text(
                        'Books to quit smoking',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Color(0xFF272728),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Text(
                  'Community',
                  style: TextStyle(
                      fontFamily: 'Eina', color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ));
                      },
                      child: ListTile(
                        leading: Image.asset(
                          'assets/img/IMG_20240521_165623.jpg',
                          width: 32,
                        ),
                        title: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF36A26F),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/img/IMG_20240521_165632.jpg',
                        width: 32,
                      ),
                      title: Text(
                        'Reset blocked users',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Color(0xFF272728),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  'PRO features',
                  style: TextStyle(
                      fontFamily: 'Eina', color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UQN(),
                            ));
                      },
                      child: ListTile(
                        leading: Image.asset(
                          'assets/img/IMG_20240521_165647.jpg',
                          width: 32,
                        ),
                        title: Text(
                          'Upgrade QuitNow',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF36A26F),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Subscriptionstatus(),
                            ));
                      },
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 20,
                            color: Colors.grey[500],
                          ),
                        ),
                        title: Text(
                          'Subscription status',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF36A26F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Color(0xFF272728),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  'Social QuitNow',
                  style: TextStyle(
                      fontFamily: 'Eina', color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        'assets/img/IMG_20240521_165701.jpg',
                        width: 32,
                      ),
                      title: Text(
                        'Join the QuitNow club on Strava',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/img/IMG_20240521_165728.jpg',
                        width: 32,
                      ),
                      title: Text(
                        'Instagram Stories filter',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Color(0xFF272728),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 185),
                child: Text(
                  'About the app',
                  style: TextStyle(
                      fontFamily: 'Eina', color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Advancedsettings(),
                            ));
                      },
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.settings_outlined,
                            size: 20,
                            color: Colors.grey[400],
                          ),
                        ),
                        title: Text(
                          'Advanced settings',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF36A26F),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.star_border,
                          size: 20,
                          color: Colors.grey[400],
                        ),
                      ),
                      title: Text(
                        'Rate the app on Google Play',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.notifications_none,
                          size: 20,
                          color: Colors.grey[400],
                        ),
                      ),
                      title: Text(
                        'notification',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.message_outlined,
                          size: 20,
                          color: Colors.grey[400],
                        ),
                      ),
                      title: Text(
                        'Frequently asked questions',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/img/IMG_20240521_165807.jpg',
                        width: 32,
                      ),
                      title: Text(
                        'Ask the bot',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.share,
                          size: 20,
                          color: Colors.grey[400],
                        ),
                      ),
                      title: Text(
                        'Share QuitNow with your friends',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.info_outline_rounded,
                          size: 20,
                          color: Colors.grey[400],
                        ),
                      ),
                      title: Text(
                        'Legal information',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF36A26F),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Color(0xFF272728),
              ),
            ],
          ),
        ));
  }
}
