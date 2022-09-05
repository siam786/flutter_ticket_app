import 'package:flutter/material.dart';

import 'Screens/BottomNavController.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page Screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BottomNavController(),
    );
  }
}
