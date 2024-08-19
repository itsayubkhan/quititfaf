import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class Demo extends StatefulWidget {
  @override
  State<Demo> createState() => _DataPageState();
}

class _DataPageState extends State<Demo> {
  TextEditingController DateController = TextEditingController();
  Timer? _timer;
  String timeSinceQuittingText = '';

  @override
  void initState() {
    super.initState();
    String storedDate = '2023-01-01 12:00 PM'; // Example stored date
    DateController.text = storedDate;

    if (storedDate.isNotEmpty) {
      DateTime quittingDate = DateFormat('yyyy-MM-dd hh:mm a').parse(storedDate);
      _updateTimeSinceQuitting(quittingDate);
      _startTimer();
    }
  }

  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (DateController.text.isNotEmpty) {
        DateTime quittingDate = DateFormat('yyyy-MM-dd hh:mm a').parse(DateController.text);
        _updateTimeSinceQuitting(quittingDate);
      }
    });
  }

  void _updateTimeSinceQuitting(DateTime quittingDate) {
    final now = DateTime.now();
    final difference = now.difference(quittingDate);

    setState(() {
      timeSinceQuittingText =
      '${difference.inDays} days, ${(difference.inHours % 24)} hours, ${(difference.inMinutes % 60)} minutes, ${(difference.inSeconds % 60)} seconds since quitting.';
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quit Smoking Tracker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Time Since Quitting:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              timeSinceQuittingText.isEmpty
                  ? 'No quitting date set'
                  : timeSinceQuittingText,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Pick a new date and recalculate (implement as needed)
                DateTime quittingDate = DateTime.now().subtract(Duration(days: 2));
                DateController.text = DateFormat('yyyy-MM-dd hh:mm a').format(quittingDate);
                _updateTimeSinceQuitting(quittingDate);
              },
              child: Text('Recalculate Time Since Quitting'),
            ),
          ],
        ),
      ),
    );
  }
}
