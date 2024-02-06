import 'package:flutter/material.dart';


class asad extends StatelessWidget {
  const asad({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [

            ]),
            title: Text("Hello"),
          ),
          body: TabBarView(
            children: [

            ],
          ),
        ),

        ),
    );
  }
}
