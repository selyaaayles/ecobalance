import 'package:ecobalance/loginpage.dart';
import 'package:ecobalance/mainpage.dart';
import 'package:ecobalance/regions.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'asset/MontserratAlternates'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
