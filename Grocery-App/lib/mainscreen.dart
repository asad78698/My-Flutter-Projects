import 'package:flutter/material.dart';
import 'package:groceryx/fruits.dart';
import 'package:groceryx/meat.dart';
import 'package:groceryx/vegetables.dart';

class main_screen extends StatelessWidget {
  String username = '';
  main_screen({required this.username});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
  theme: ThemeData(primarySwatch: Colors.deepPurple),
  home: Scaffold(
    appBar: AppBar(title: Text("Main Menu")),
      body: SafeArea(
      child: SingleChildScrollView(
      child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 15.0, bottom: 0.0),
                child: Image.asset('resources/images/userlogo.png', width: 50, height: 50,)
            ),
            Container(
              margin: EdgeInsets.only(left: 8.0, right: 0.0, top: 15.0, bottom: 0.0),
            child: Text('Hi, $username'),
          ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 12.0, bottom: 0.0),  
          padding: EdgeInsets.all(4.0),
          alignment: Alignment.center,
          child: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
                children: [
                  TextSpan(text: 'What Do You Want To'),
                  TextSpan(text: " Order?", style: TextStyle(color: Colors.deepPurple),)
                ],
              ),
            ),
          ),
          ),

        Container(
          width: 330,
          height: 40,
          margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 15.0, bottom: 0.0),
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Colors.deepPurple,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                  ),
                )
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left:0.0, right: 0.0, top: 15.0, bottom: 0.0),
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                 color: Colors.indigo.shade50,
                 borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  children: [
                   Container(
                     margin: EdgeInsets.only(left: 0.0, top: 22.0, right: 0.0, bottom: 0.0),
                     alignment: Alignment.center,
                     child: TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>vegetablescreen()));
                     }, child: Text("Vegetables", style: TextStyle(fontSize: 20, color: Colors.black), ),)
                   ),
                    Container(
                      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 10.0),
                      child: Image.asset('resources/images/veg.png', width: 150, height: 140,),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 15.0, bottom: 0.0),
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 0.0, top: 22.0, right: 0.0, bottom: 0.0),
                      alignment: Alignment.center,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>meatscreen()));
                      }, child: Text("Meat", style: TextStyle(fontSize: 20, color: Colors.black), ),)
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 10.0),
                      child: Image.asset('resources/images/met.png', width: 150, height: 140,),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

              Container(
                margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                width: 340,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 0.0, top: 22.0, right: 0.0, bottom: 0.0),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>fruitscreen()));
                        }, child: Text("Fruits", style: TextStyle(fontSize: 20, color: Colors.black), ),)
                    ),
                    Container(
                      child: Image.asset('resources/images/fruits.png', width: 250, height: 120,),
                    )
                  ],
                ),
              ),
        Container(
          margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
          padding: EdgeInsets.all(12.0),
          child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
            children: [
              TextSpan(text: 'Get Free '),
              TextSpan(text: " Delivery", style: TextStyle(color: Colors.red),),
              TextSpan(text: " On First Order!")
            ],
          )
        )
        )
      ],
  ),
  ),
  ),
  ),
);
  }
}
