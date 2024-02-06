import 'package:flutter/material.dart';
import 'package:groceryx/cnfrmorder.dart';

class cartscreen extends StatelessWidget {
  var pricefruits = 0;
  var fruitqty = 0;
  var priceveg = 0;
  var vegqty = 0;
  var pricemeat = 0;
  var meatqty = 0;
  var total = 0;
  cartscreen({required this.pricefruits, required this.fruitqty, required this.priceveg, required this.vegqty, required this.pricemeat, required this.meatqty});

  @override
  Widget build(BuildContext context) {
    total = pricemeat+pricefruits+priceveg+120+100;

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text("Cart Page"),),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 15.0, bottom: 10.0),
                  padding: EdgeInsets.all(8.0),
                  child: Text("Your Item List", style: TextStyle(fontSize: 30),),),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text("Items", style: TextStyle(fontSize: 18),),
                  Text("QTY",style: TextStyle(fontSize: 18),),
                  Text("Price", style: TextStyle(fontSize: 18),),
                ],
                  ),

                ),
                Text("--------------------------------------------------"),
                Container(
                  margin: EdgeInsets.only(left: 0.0,right: 0.0, top: 5.0, bottom: 5.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Vegetables", style: TextStyle(fontSize: 16)),
                          Text(vegqty.toString() , style: TextStyle(fontSize: 16)),
                          Text(priceveg.toString() , style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Meat" , style: TextStyle(fontSize: 16)),
                          Text(meatqty.toString(), style: TextStyle(fontSize: 16)),
                          Text(pricemeat.toString() , style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Fruits" , style: TextStyle(fontSize: 16)),
                          Text(fruitqty.toString() ,style: TextStyle(fontSize: 16)),
                          Text(pricefruits.toString(), style: TextStyle(fontSize: 16)),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Delivery Fee" , style: TextStyle(fontSize: 16)),
                          Text(""),
                          Text("150" , style: TextStyle(fontSize: 16)),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Tax Fee GST" , style: TextStyle(fontSize: 16)),
                          Text(""),
                          Text("120" , style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Text("-----------------------------------------------"),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Total Bil" , style: TextStyle(fontSize: 16)),
                          Text(""),
                          Text(total.toString() , style: TextStyle(fontSize: 16)),
                        ],
                      ),


                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: 160,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>confrmscreen()));
                  }, child: Text("Confirm Your Order"),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
