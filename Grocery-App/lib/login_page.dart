import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groceryx/mainscreen.dart';

class login_page extends StatelessWidget {
  TextEditingController _usernamecontroller = TextEditingController();
  String name = '';
  String pass = '';

  login_page({required this.name, required this.pass});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text("Login Page"),),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('resources/images/signuplogo.png', width: 200, height: 250,)
                ),

                Container(
                  padding: EdgeInsets.all(6.0),
                  margin: EdgeInsets.only(left: 2.0, top: 12.0, right: 0.0, bottom: 8.0),
                  alignment: Alignment.center,
                  child: Text("Login Here!", style: TextStyle(fontSize: 28, color: Colors.black, fontFamily: 'Roboto') ),),

                Container(
                    margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 4.0, right: 0.0),
                    padding: EdgeInsets.all(6.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red
                            )
                        ),
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        labelText: name,

                      ),
                    )
                ),

                Container(
                    margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 4.0, right: 0.0),
                    padding: EdgeInsets.all(6.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        labelText: ('******'),
                      ),
                    )
                ),

                Container(
                  width: 150,
                  height: 50,
                  margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 6.0, right: 0.0),
                  padding: EdgeInsets.all(6.0),
                  child: ElevatedButton(child: Text("Login", style: TextStyle(fontSize: 18),), onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>main_screen(username: name,)));
                  },),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
