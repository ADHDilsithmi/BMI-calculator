// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import '../constants/app_constants.dart';
import '../widgets/left_bar.dart';
import '../widgets/right_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_constants.dart';
import 'package:my_flutter_app/widgets/left_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0, //no shadow effect
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                child: TextField(
                  controller: _heightController,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height(m)",
                      hintStyle: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8))),
                ),
              ),
              Container(
                width: 130,
                child: TextField(
                  controller: _weightController,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight(kg)",
                      hintStyle: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8))),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              double _h = double.parse(_heightController.text);
              double _w = double.parse(_weightController.text);
              setState(() {
                _bmiResult = _w / (_h * _h);
                if (_bmiResult > 25) {
                  _textResult = "You're over weight";
                } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                  _textResult = "You are normal weight";
                } else {
                  _textResult = "You're under weight";
                }
              });
            },
            child: Container(
              child: Text(
                "Calculate",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: accentHexColor),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              _bmiResult.toStringAsFixed(2),
              style: TextStyle(fontSize: 90, color: accentHexColor),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Visibility(
            visible: _textResult.isNotEmpty,
            child: Container(
              child: Text(
                _textResult,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RightBar(barWidth: 40),
          SizedBox(
            height: 20,
          ),
          RightBar(barWidth: 70),
          SizedBox(
            height: 20,
          ),
          RightBar(barWidth: 40),
          SizedBox(
            height: 20,
          ),
          LeftBar(barWidth: 40),
          SizedBox(
            height: 20,
          ),
          LeftBar(barWidth: 70),
          SizedBox(
            height: 20,
          ),
          LeftBar(barWidth: 40),
        ]),
      ),
    );
  }
}
