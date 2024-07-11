import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen',style: TextStyle(fontSize: 50)))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('$counter',style: const TextStyle(fontSize: 200, fontWeight: FontWeight.w100)),
          if (counter == 0 || counter > 1) const Text('Clics',style: TextStyle(fontSize: 50))
          else const Text('Clic',style: TextStyle(fontSize: 50))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
      },
      child: Icon(Icons.plus_one),
    ));
  }
}