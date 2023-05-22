import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final images = [
    Image.asset(
      'assets/crsl1.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset('assets/crsl2.jpg', fit: BoxFit.fill),
    Image.asset('assets/crsl3.jpg', fit: BoxFit.fill)
  ];

  List main = [
    "Деревья предлагают бесконечную красоту",
    "Обеспечивают тень в жаркую летнюю погоду и связь с природой",
    "Зеленый цвет снижает стресс, а цветущие или фруктовые деревья также радуют глаз",
    "Высаживая деревья, вы помогаете сделать мир лучше",
    "Правильно посаженные деревья могут уменьшить шумовое загрязнение, блокируя звуковые волны, уменьшая шум до 40 процентов",
    "Снижают температуру воздуха, блокируя солнечный свет, и служат естественным кондиционером, поскольку вода испаряется с поверхности листьев, забирая тепловую энергию из воздуха",
    "Помогают уменьшить загрязнение",
    "Помогают предотвратить сток поверхностных вод",
    "Помогают с изменением климата, уменьшая парниковый эффект",
    "Деревья поглощают вредные газы из воздуха, в том числе двуокись углерода, двуокись серы и угарный газ. Взамен они выделяют кислород",
    "Дерево, которое вы посадили в ландшафте, помогает обеспечить среду обитания для многих животных, птиц и насекомых"
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlayInterval: Duration(seconds: 2),
          autoPlay: true,
          aspectRatio: 1.5,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        items: images,
      ),
      DotsIndicator(
        decorator: DotsDecorator(
            activeColor: Color.fromARGB(255, 0, 48, 2),
            size: Size.square(10),
            activeSize: Size.square(15),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
        dotsCount: images.length,
        position: currentIndex.toDouble(),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Color(0x33003002), blurRadius: 20)],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color.fromARGB(255, 0, 48, 2),
                width: 1.5,
              )),
          width: MediaQuery.of(context).size.width / 0.5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              """Если вы когда-нибудь будете искать причины посадить дерево , просто прокатитесь по окрестностям. Посмотрите вверх и вниз по проспектам и обратите внимание, что улицы, обсаженные деревьями, кажутся безопаснее, счастливее и здоровее, чем улицы с цементными тротуарами и припаркованными автомобилями.""",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ),
      ListView.builder(
        itemCount: main.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: Icon(
                Icons.check_circle_outline,
                size: 28,
                color: Color.fromARGB(255, 0, 48, 2),
              ),
              title: Text(
                main[index],
                style: TextStyle(fontSize: 20),
              ));
        },
      ),
    ]));
  }
}
