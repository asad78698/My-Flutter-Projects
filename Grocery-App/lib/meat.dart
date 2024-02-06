import 'package:flutter/material.dart';
import 'package:groceryx/card.dart';
import 'package:groceryx/mainscreen.dart';

class meatscreen extends StatelessWidget {
  const meatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return(
        MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: ThemeData(primarySwatch: Colors.deepPurple),
          home: meatscrn(),
        )
    );
  }
}


class meatscrn extends StatefulWidget {
  const meatscrn({super.key});

  @override
  State<meatscrn> createState() => _vegscreenState();
}

class _vegscreenState extends State<meatscrn> {
  var  price = 500;
  var result = 0;
  var count = 0;
  void mystate() {
    setState(() {
      result = result + price;
      count++;
    });
  }

  void goingtoscreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>cartscreen(pricefruits: 0, fruitqty: 0, priceveg: 0, vegqty: 0, pricemeat: result, meatqty: count)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meat"), actions: [IconButton(onPressed: (){
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
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Batair", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/batair.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
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
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Beef", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/beef.png", width: 95, height: 80,),
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
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Chicken", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/chicken.png", width: 95, height: 80,),
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
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Dear", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/dear.png", width: 95, height: 80,),
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
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Duck", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/duck.png", width: 95, height: 80,),
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
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Fish", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/fish.png", width: 95, height: 80,),
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
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Mutton", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/mutton.png", width: 95, height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("Price: $price RS"), IconButton(onPressed: (){mystate();}, icon: Icon(Icons.add)) ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(4.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.red.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Rabit", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/rabbit.png", width: 95, height: 80,),
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

