import 'package:flutter/material.dart';

// {{MyWidget}} to MyWidget

final inlineWidgets = {
  'MyWidget': (_) => const MyWidget(),
};

// MyWidget
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.pink,
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Scaffold(
          appBar: AppBar(title: const Text('My Widget')),
          body: const Counter(),
        ),
      ),
    );
  }
}

// Counter Widget
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Count:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
