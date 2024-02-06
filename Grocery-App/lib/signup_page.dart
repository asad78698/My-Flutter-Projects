import 'package:flutter/material.dart';
import 'package:groceryx/login_page.dart';

class signup_page extends StatelessWidget {
  const signup_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: signup_screen(),
    );
  }
}


class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

final _usernameController = TextEditingController();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
final _addressController = TextEditingController();

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Sign Up "),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset('resources/images/signuplogo.png', width: 200, height: 200,),
              ),
              Container(
                padding: EdgeInsets.all(6.0),
                margin: EdgeInsets.only(left: 2.0, top: 12.0, right: 0.0, bottom: 8.0),
                alignment: Alignment.center,
               child: Text("Hi, There Signup To Continue!", style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: 'Roboto') ),),

              Container(
                margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 4.0, right: 0.0),
                  padding: EdgeInsets.all(6.0),
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red
                        )
                      ),
                      labelText: ("Enter Username"),
                    ),
                  )

              ),

              Container(
                  margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 4.0, right: 0.0),
                  padding: EdgeInsets.all(6.0),
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ("Enter Email"),
                    ),
                  )
              ), //email

              Container(
                  margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 4.0, right: 0.0),
                  padding: EdgeInsets.all(6.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ("Enter Password"),
                    ),
                  )
              ),

              Container(
                margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 4.0, right: 0.0),
                padding: EdgeInsets.all(6.0),
                child: TextField(
                  controller: _addressController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Address",
                  ),
                ),
              ),

              Container(
                width: 150,
                height: 50,
                margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 6.0, right: 0.0),
                padding: EdgeInsets.all(6.0),
                child: ElevatedButton(child: Text("Sign Up"), onPressed: (){
                  pass_value(context);
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void pass_value(BuildContext context){
  String username = '';
  String password = '';
  String addreess = '';
  password = _passwordController.text;
  username = _usernameController.text;
  addreess = _addressController.text;

  Navigator.push(context, MaterialPageRoute(builder: (context)=>login_page(name: username, pass:password)));

}