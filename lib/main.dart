import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/profile_screen.dart';
import 'package:flutter_application_2/screens/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
