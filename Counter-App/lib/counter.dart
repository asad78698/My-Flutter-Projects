import 'dart:html';

import 'package:flutter/material.dart';

class counting extends StatefulWidget {
  const counting({super.key});

  @override
  State<counting> createState() => _countingState();
}

class _countingState extends State<counting> {

  int count = 0;

  void performingcounting(){

    setState(() {
      count++;
    });

  }

  void deperforming(){

      setState(() {
        count--;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.back_hand))],
        title: Text("Welcome Back"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: (){
            performingcounting();

          }, child: Icon(Icons.add),),

          FloatingActionButton(onPressed: (){
            deperforming();


          }, child: Icon(Icons.minimize),),
        ],
      ),
      body: Container(
        child: Center(
        ),
      ),



    );
  }
}
