import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(CardApp());
}

class CardApp extends StatelessWidget {
  Widget CreateCard(String name, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.orange,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
          size: 32,
        ),
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          body: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 10,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(300)),
                    child: Image.asset(
                      'Img/Fonts/Hasan image-fotor-20230801203339.png',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Hasan EL-Badry',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(fontSize: 18, fontFamily: 'MyFont'),
                  ),
                  Divider(
                    height: 20,
                    thickness: 3,
                    color: Colors.amber,
                    indent: 40,
                    endIndent: 40,
                  ),
                  CreateCard('hasan.elbadry2006@gmail.com', Icons.mail),
                  CreateCard('01124370080', Icons.phone),
                  CreateCard('Egypt , Cario', Icons.location_city),
                  CreateCard('ELSewedy international school ', Icons.school),
                  CreateCard('16 Years old', Icons.person_2_outlined),
                ],
              )
            ],
          )),
    );
  }
}
