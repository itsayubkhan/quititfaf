import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Components/AchievmentCard.dart';

class AchievementPage extends StatefulWidget {
  @override
  _AchievementPageState createState() => _AchievementPageState();
}

class _AchievementPageState extends State<AchievementPage> {
  List<dynamic> achievements = [];

  @override
  void initState() {
    super.initState();
    loadAchievements();
  }

  Future<void> loadAchievements() async {
    final String response = await rootBundle.loadString('assets/json/achievements.json');
    final Map<String, dynamic> data = json.decode(response);
    final List<dynamic> achievementsList = data['achievements'];

    setState(() {
      achievements = achievementsList.cast<Map<String, dynamic>>();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181C1C),
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Achievements'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),
          itemCount: achievements.length,
          itemBuilder: (context, index) {
            return AchievementCard(
              title: achievements[index]['title'],
              image: achievements[index]['image'], description: achievements[index]['description'],
            );
          },
        ),
      ),
    );
  }
}

