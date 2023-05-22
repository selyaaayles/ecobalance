import 'dart:html';

import 'package:flutter/material.dart';

class RegionsPage extends StatefulWidget {
  const RegionsPage({super.key});

  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

class _RegionsPageState extends State<RegionsPage> {
  List names = [
    'Анна Бегеба',
    'София Грекова',
    'Андрей Гуляев',
    'Даниил Зыков'
  ];
  List data = [
    'Архангельская область a.begeba2011@gmail.com',
    ' Амурская область sofiya_grekova@bk.ru',
    'Вологодская область publicpark@mail.ru',
    'Ивановская область delai.iv.obl@yandex.ru'
  ];
  final photos = [
    'assets/reg1.jpg',
    'assets/reg2.jpg',
    'assets/reg3.jpg',
    'assets/reg4.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 24,
            ),
          ),
          title: Text(
            'Регионы',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/backgr.jpg'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Региональные координаторы',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.8),
                    itemCount: photos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(170, 167, 196, 169),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  photos[index],
                                  height: 170,
                                  width: 250,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  names[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  data[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              ]));
                    }),
              ],
            ),
          ),
        )));
  }
}
