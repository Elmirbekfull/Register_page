


import 'package:flutter/material.dart';
import 'package:flutter_2/hompage.dart';

class WidjetStart extends StatelessWidget {
  const WidjetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
  
    );
  }
}