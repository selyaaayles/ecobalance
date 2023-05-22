import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(" О нас",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/backgr.jpg'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Image.asset(
              'assets/aboutus.jpg',
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                """EcoBalanCe — это интернет-издание об экологичном образе жизни. 
Быть экологичным и сажать деревья — это классно и не сложно.""",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 15,
            ),
            Text(
                """Наша программа для посадки деревьев, в сообществе с другими людьми, для улучшения качества воздуха, уменьшения загрязнения и весёлого, а главное полезного времяпровождения. 
тут вы можете найти сообщества в своём регионе и присоединиться к ним.
если возникнут какие-либо вопросы можете связаться с координатором вашего региона.
""",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(166, 0, 48, 2),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text('EcoBalanCe–мы вместе преобразуем мир',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
