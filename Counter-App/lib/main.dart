import 'package:flutter/material.dart';
import 'package:myfirstapp/counter.dart';
import 'package:myfirstapp/loginpage.dart';



void main (){

  runApp(myginger());

}

class myginger extends StatelessWidget {
  const myginger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: loginPage()
    );
  }
}


