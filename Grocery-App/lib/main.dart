import 'package:groceryx/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const groceryx());
}

 class groceryx extends StatelessWidget {
   const groceryx({super.key});
   @override
   Widget build(BuildContext context) {

     return(
     MaterialApp(
       debugShowCheckedModeBanner: false,
       home: splash_screen()
     )
     );
   }
 }
