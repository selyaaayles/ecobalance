import 'package:ecobalance/loginpage.dart';
import 'package:flutter/material.dart';

import 'drawermenu.dart';
import 'mainpage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 48, 2),
          title: Text(
            'EcoBalanCe',
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            width: MediaQuery.of(context).size.width * 0.5,
            child: DrawMenu()),
        body: MainPage());
  }
}
