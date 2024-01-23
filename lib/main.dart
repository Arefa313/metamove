// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      margin: EdgeInsets.symmetric(vertical: 60.0),
    child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
              image: AssetImage(
            "assets/images/img.png",
          )),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xff05BBF9),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: const Size(133, 42),
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            child: Text("join waitlist"),
          ),
        ],
      )),
    
    Container(
      padding: EdgeInsets.symmetric(vertical: 60.0),
      child: SingleChildScrollView(
          child: Column( 
        children: [
          Row(children: [
            Image(image: AssetImage("assets/images/intro.png")),
            Container(
              width: 152,
              height: 194,
              child: Text(
                'Metamove is a groundbreaking AI-driven move-to-earn Web3 platform that masterfully combines social-fi and game-fi aspects to motivate healthier lifestyles. Harnessing state-of-the-art AI technology, Metamove delivers personalized exercise routines while promoting engaging user experiences. While earning tokens and exercise, it enables users to enjoy team play with friends using the integrated voice chat functionality, and benefit from AI’s potential to reshape your fitness journey with Metamove’s trailblazing fusion of health and blockchain innovations.',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ]),
          Image(
              image: AssetImage(
            "assets/images/IMG_0855-copy-2.png",
          )),
          Text(
            "Cycling and Walking",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          Text(
            "Discover a new way to stay active and motivated with Metamove. Equip yourself with stunning, in-app NFT sneakers and bikes, and start cycling, walking, jogging, or running. Earn in-app tokens while engaging in physical activities and exercises individually or with friends across the globe.",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          Row(children: [
            Image(image: AssetImage("assets/images/finall.png")),
            Container(
              width: 122,
              height: 194,
              child: Text(
                'Metamove is a groundbreaking AI-driven move-to-earn Web3 platform that masterfully combines social-fi and game-fi aspects to motivate healthier lifestyles. Harnessing state-of-the-art AI technology, Metamove delivers personalized exercise routines while promoting engaging user experiences. While earning tokens and exercise, it enables users to enjoy team play with friends using the integrated voice chat functionality, and benefit from AI’s potential to reshape your  fitness journey with Metamove’s trailblazing fusion of health and blockchain innovations.',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ]),
        ],
      ))),
  
    Container(
      margin: EdgeInsets.symmetric(vertical: 60.0),
        child: Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //  Text("The Meta Jackpot", style: TextStyle(color: Colors.white , fontSize: 10),),
          Container(
            width: 152,
            height: 194,
            child: Text(
              'Elevate your Metamove experience with the exciting Meta Jackpot! In addition to the various earning opportunities available within the app, the Meta Jackpot offers you a chance to win big lottery prizes.Enter the lottery by owning in-app assets (sneakers or bicycles) and purchasing tickets within the app. For more information on how to participate and maximize your chances of winning, please refer to the Metamove Whitepaper.',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          Image(image: AssetImage("assets/images/Group 7.png")),
        ],
      ),
    )),
    Container(
      margin: EdgeInsets.only(top: 60.0),
        child: Center(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/Group 24.png")),
          Image(image: AssetImage("assets/images/Group 25.png")),
        ],
      ),
    ))),
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
                "assets/images/logo 1.png",
                height: 20,
                width: 99,
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
        backgroundColor: Color(0xff051019),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 45,
              ),
              label: " "),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/Group 1.png"),
                size: 40,
              ),
              label: " "),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Group 2.png"),
              size: 40,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/Group 3.png"),
                size: 40,
              ),
              label: " "),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff00C4FF),
        unselectedItemColor: Color(0xff395161),
        onTap: _onItemTapped,
      ),
    );
  }
}
