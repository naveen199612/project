import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AgeCalculator7(),
    );
  }
}

class AgeCalculator7 extends StatefulWidget {
  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator7> {
  late DateTime _selectedDateTime = DateTime.now();
  String _ageResult = '';

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
      );

      if (pickedTime != null) {
        setState(() {
          _selectedDateTime = DateTime(
            picked.year,
            picked.month,
            picked.day,
            pickedTime.hour,
            pickedTime.minute,
          );
          _calculateAge();
        });
      }
    }
  }

  void _calculateAge() {
    DateTime now = DateTime.now();
    Duration difference = now.difference(_selectedDateTime);

    int years = now.year - _selectedDateTime.year;
    int months = now.month - _selectedDateTime.month;
    int days = now.day - _selectedDateTime.day;
    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;
    int seconds = difference.inSeconds % 60;

    // Adjust for negative days if the birthdate is ahead of today's date
    if (days < 0) {
      // Calculate the number of days in the previous month
      int daysInPreviousMonth = DateTime(
        now.year,
        now.month - 1,
      ).day;
      days += daysInPreviousMonth;
      months--; // Adjust months accordingly
    }

    // Adjust for negative months if the birthdate is ahead of today's date
    if (months < 0) {
      years--;
      months += 12;
    }

    setState(() {
      _ageResult = 'You are $years years, $months months, $days days, '
          '$hours hours, $minutes minutes, and $seconds seconds old.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Age Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => _selectDateTime(context),
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                    Text(
                      _selectedDateTime == null
                          ? 'Select your birth date and time'
                          : DateFormat.yMMMd().add_jm().format(_selectedDateTime),
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              _ageResult,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
