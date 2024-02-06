import 'package:flutter/material.dart';

class confrmscreen extends StatelessWidget {
 String adrs = 'Street 80 House XX G13/1, Islamabad';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text("Order Confirmed"),),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 8.0, right: 0.0, top: 10.0, bottom: 2.0),
                  padding: EdgeInsets.all(8.0),
                  child: Text("Delivered To: ", style: TextStyle(fontSize: 26),),
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2
                    )
                  ),
                  width: 340,
                  height: 80,
                  margin: EdgeInsets.only(left: 8.0, right: 0.0, top: 10.0, bottom: 10.0),
                  padding: EdgeInsets.all(12.0),
                  child: Text(adrs, style: TextStyle(fontSize: 20),),
                ),

                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text('Congrats ', style: TextStyle(fontSize: 26, color: Colors.deepPurple, ),),
                      Text('Your Order Has Confirmed ', style: TextStyle(fontSize: 22, color: Colors.black),),],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 8.0, right: 0.0, top: 10.0, bottom: 10.0),
                  width: 320,
                  height: 200,
                  child: Image.asset('resources/images/rider.png', width: 300, height: 200)
                ),
                Container(
                  child: Text("Reaching In 5 Minutes", style: TextStyle(fontSize: 22),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
