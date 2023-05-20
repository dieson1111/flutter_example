import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SchedulePage(),
    );
  }
}

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Today is ${DateTime.now().toString()}',
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount:
                  31, // 16.5 hours from 8:00 to 23:30 with 30 minute intervals
              itemBuilder: (BuildContext context, int index) {
                final hour = 8 + index ~/ 2;
                final minute = 0 + index % 2 * 30;
                final now = DateTime.now();
                final dateTime =
                    DateTime(now.year, now.month, now.day, hour, minute);
                final time = TimeOfDay.fromDateTime(dateTime);
                return Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(time.format(context)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // do something when the button is pressed
                            },
                            child: const Text('Button 1'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // do something when the button is pressed
                            },
                            child: const Text('Button 2'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // do something when the button is pressed
                            },
                            child: const Text('Button 3'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // do something when the button is pressed
                            },
                            child: const Text('Button 4'),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
