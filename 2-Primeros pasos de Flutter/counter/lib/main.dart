import 'package:flutter/material.dart';
import 'package:hello_world/presentations/screens/counter_funtions_screen.dart';
import 'package:hello_world/presentations/screens/counter_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ),
      home: const CounterFuntionsScreen()
      
    );
  }

}