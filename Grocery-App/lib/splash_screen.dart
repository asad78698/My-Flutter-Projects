import 'dart:async';
import 'package:flutter/material.dart';
import 'package:groceryx/signup_page.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => signup_page()),
      );
    }); // Added the closing parenthesis for Timer function
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('resources/images/logo.png', width: 660, height: 250, scale: 1, alignment: Alignment.center,),
              Text("GROCERY-X", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white,)),
            ],
          ),
        ),
      ),

    );

  }
}
