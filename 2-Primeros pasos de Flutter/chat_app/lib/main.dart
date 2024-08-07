import 'package:chat_app/config/theme/theme_config.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeConfig().theme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body:  Center(
          child: FilledButton.tonal(
            
            onPressed: () {
              
            },
            child: const Text('Click', style: TextStyle(height: 50),),)
        ),
      ),
    );
  }
}