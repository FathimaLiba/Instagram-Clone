import 'package:flutter/material.dart';
import 'package:instagram_app/home_screen.dart';
import 'package:instagram_app/insta_screen.dart';

void main() {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(
      // scaffoldBackgroundColor: Color.fromARGB(255, 203, 245, 163),
      // appBarTheme:
      // AppBarTheme(backgroundColor: Color.fromARGB(207, 33, 250, 70)),
      // ),
      title: "Sample App",
      home: InstaScreen(),
    );
  }
}
