import 'package:flutter/material.dart';
import 'package:groceryx/card.dart';
import 'package:groceryx/mainscreen.dart';

class fruitscreen extends StatelessWidget {
  const fruitscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return(
        MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: ThemeData(primarySwatch: Colors.deepPurple),
          home: fruitscrn(),
        )
    );
  }
}


class fruitscrn extends StatefulWidget {
  const fruitscrn({super.key});

  @override
  State<fruitscrn> createState() => _fruitscrn();
}

class _fruitscrn extends State<fruitscrn> {
  var price = 100;
  var result = 0;
  var count = 0;
  void mystate() {
    setState(() {
      result = result + 100;
      count++;
    });
  }

  void goingtoscreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>cartscreen(pricefruits: result, fruitqty: count, priceveg: 0, vegqty: 0, pricemeat: 0, meatqty: 0,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fruits"), actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>main_screen(username: "Asad",)));
      }, icon: Icon(Icons.arrow_back))],),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 10.0, bottom: 0.0),
                  padding: EdgeInsets.all(18.0),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Apple", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/apple.png", width: 95, height: 80,),
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
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Avacado", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/avacado.png", width: 95, height: 80,),
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
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Banana", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/banana.png", width: 95, height: 80,),
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
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Mango", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/mango.png", width: 95, height: 80,),
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
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Orange", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/orange.png", width: 95, height: 80,),
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
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Pineapple", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/pineapple.png", width: 95, height: 80,),
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
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Strawberry", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/strawberry.png", width: 95, height: 80,),
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
                      color: Colors.orange.shade50
                  ),
                  child: Column(
                    children: [
                      Text("Water Melon", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Image.asset("resources/images/watermelon.png", width: 95, height: 80,),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

