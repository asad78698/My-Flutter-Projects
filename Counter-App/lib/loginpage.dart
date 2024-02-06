import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          actions: [ IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            IconButton(onPressed: (){}, icon: Icon(Icons.add))],
        ),
        body: SafeArea(
          child: Column(
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Hello Everyone"),
                  Text("Hello Everyone"),
                  Text("Hello Everyone"),
                  Text("Hello Everyone"),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
                  ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
                  ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
