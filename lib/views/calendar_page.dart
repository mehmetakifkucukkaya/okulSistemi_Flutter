import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    var takvim = Constants().takvim;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akademik Takvim'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '2024 Akademik Yılı Takvimi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              for (var eventGroup in takvim)
                for (var event in eventGroup["events"]!)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${event["date"]}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${event["event"]}',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
