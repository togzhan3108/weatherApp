import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather UI',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFE15241),
        scaffoldBackgroundColor: Color(0xFFE15241),
      ),
      home: HomePage(),
    );
  }
}