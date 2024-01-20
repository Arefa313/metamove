// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
//  static final width=30;
  int height = 40;
  // static TextStyle optionStyle =
  //     TextStyle( fontWeight: FontWeight.bold , height: 50,);
  List<Widget> _widgetOptions = <Widget>[
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
              image: AssetImage(
            "assets/images/img.png",
            // height:40,
          )),
            SizedBox(height: 30,),
          ElevatedButton(
                 style: ElevatedButton.styleFrom(
                    primary: Color(0xff05BBF9),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: const Size(133, 42),
                    padding: const EdgeInsets.all(15)),
                    onPressed: (){},
                    child: Text("join waitlist"),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/intro.png")),
          Text("helloe"),
        ],
      ),
    ),
    Container(
      child: Row(
        children: [
          Image(image: AssetImage("assets/images/Group 7.png")),
        ],
      ),
    ),
    Container(
      child: Row(
        children: [
          Image(image: AssetImage("assets/images/Group 7.png")),
        ],
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000007),
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Image.asset(
                "assets/images/logo 1.png", height: 20, width: 99,
                // fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Color(0xff052029),
        // backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home, size: 45,
                // color:Color(0xff395161) ,
              ),
              label: " "),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                size: 45,
              ),
              label: " "),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              size: 45,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                size: 45,
              ),
              label: " "),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff05BBF9),
        unselectedItemColor: Color.fromARGB(255, 82, 117, 139),
        onTap: _onItemTapped,
      ),
    );
  }
}
