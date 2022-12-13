// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, duplicate_ignore, camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageBody(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Icon(
            Icons.share,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.settings,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          backgroundColor: Colors.white,
          elevation: 20,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedFontSize: 20,
          iconSize: 30,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: ((value) {
            setState(() {
              _currentindex - value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/message-regular.svg",
                height: 30,
                width: 30,
              ),
              label: 'Sms',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/bag-shopping-solid.svg",
                height: 30,
                width: 30,
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            )
          ]),
    );
  }
}

class PageBody extends StatefulWidget {
  const PageBody({super.key});

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("assets/images/person.webp"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Peter Cheune",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Front-end Developers",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Power Level 5",
                          style: TextStyle(color: Colors.orange[900]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
          child: Container(
            child: Text(
              "I have 11 years in commercial front end web development, producing responsive websites and exceptional user experience",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: <Widget>[
              Text(
                "SUPER POWERS",
                style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 1,
                  width: 220,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Container(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            children: <Widget>[
              list(
                icon: "assets/images/html5.svg",
              ),
              list(
                icon: "assets/images/css3-alt.svg",
              ),
              list(
                icon: "assets/images/square-js.svg",
              ),
              list(
                icon: "assets/images/react.svg",
              ),
              list(
                icon: "assets/images/wordpress.svg",
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/back.png",
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                    Positioned(
                        top: 15,
                        left: 25,
                        child: Text(
                          "5+",
                          style: TextStyle(fontSize: 35, color: Colors.grey),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class list extends StatelessWidget {
  const list({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/back.png",
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          Positioned(
              top: 10,
              left: 18,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  icon,
                  height: 50,
                  width: 50,
                ),
              ))
        ],
      ),
    );
  }
}
