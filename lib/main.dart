import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/home_page.dart';
import 'package:travel_app_ui/pages/second_page.dart';
// import 'package:travel_app_ui/pages/home_page.dart';
// import 'package:travel_app_ui/pages/second_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SecondPage(),
    );
  }
}


