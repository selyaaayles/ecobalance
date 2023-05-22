import 'dart:math';
import 'dart:ui';

import 'package:ecobalance/aboutus.dart';
import 'package:ecobalance/contactus.dart';
import 'package:ecobalance/loginpage.dart';
import 'package:ecobalance/regions.dart';
import 'package:flutter/material.dart';

class DrawMenu extends StatefulWidget {
  const DrawMenu({super.key});

  @override
  State<DrawMenu> createState() => _DrawMenuState();
}

class _DrawMenuState extends State<DrawMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      Container(
        color: Color.fromARGB(255, 0, 48, 2),
        height: 55,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 25),
              child: Image.asset(
                'assets/eco.png',
                height: 25,
                width: 25,
              ),
            ),
            Text(
              'EcoBalanCe',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 4.5,
        child: ListView(
          children: [
            InkWell(
              onTap: () {},
              child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => RegionsPage()));
                  },
                  leading: Icon(Icons.map),
                  title: Text(
                    'Регионы',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                  leading: Icon(Icons.join_inner_outlined),
                  title: Text(
                    'Вступить',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ContactUs()));
                  },
                  leading: Icon(Icons.email_outlined),
                  title: Text(
                    'Связаться с нами',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => AboutUs()));
                  },
                  leading: Icon(Icons.people_outline),
                  title: Text(
                    'О нас',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
      ),
      Divider(
        endIndent: 30,
        color: Color.fromARGB(206, 53, 53, 53),
      )
    ]));
  }
}
