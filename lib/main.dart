import './screens/home.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'BMI calculator',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
       home: HomeScreen(),
    );
  }
}
