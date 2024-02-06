import 'package:flutter/material.dart';
import 'package:groceryx/card.dart';
import 'package:groceryx/mainscreen.dart';

class vegetablescreen extends StatelessWidget {
  const vegetablescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return(
     MaterialApp(
       debugShowCheckedModeBanner: true,
       theme: ThemeData(primarySwatch: Colors.deepPurple),
       home: vegscreen(),
    )
    );
  }
}

class vegscreen extends StatefulWidget {
  const vegscreen({super.key});

  @override
  State<vegscreen> createState() => _vegscreenState();
}

class _vegscreenState extends State<vegscreen> {
  var  price = 60;
  var result = 0;
  var count = 0;
  void mystate() {
    setState(() {
      result = result + 60;
      count--;
    });
  }

  void goingtoscreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>cartscreen(pricefruits: 0, fruitqty: 0, priceveg: result, vegqty: count, pricemeat: 0, meatqty: 0)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vegetables"), actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>main_screen(username: "Asad",)));
      }, icon: Icon(Icons.arrow_back))],),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Onion", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/onion.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Capcicum", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/capcicum.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),
              ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Cabbage", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/cabbage.png", width: 90, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Carrot", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/carrotred.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),
              ],),

              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("lady Finger", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/ladyfinger.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Potato", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/potato.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),
              ],),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Palak", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/spinish.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.purple.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Tomato", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/tomato.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),
              ],),
              Container(
                width: 150,
                height: 35,
                margin: EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0, top: 10.0),
                alignment: Alignment.center,
                child: FloatingActionButton.extended(onPressed: (){goingtoscreen();}, label: Text("View Cart: $count"), icon: Icon(Icons.shopping_cart)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

