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
  // static TextStyle optionStyle =
  //     TextStyle( fontWeight: FontWeight.bold , height: 50,);
   List<Widget> _widgetOptions = <Widget>[
   Container(
    child:Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image:AssetImage("assets/images/img.png",
        //   width: 300,
        // height: 150,
        // fit: BoxFit.contain,
        )),
        
    ],
    
    ),
   ),
    Container(
    child: Row(
      children: [
        Image(image:AssetImage("assets/images/intro.png")),
        Text("helloe"),
      ],
    ),
   ),
   Container(
    child: Row(
      children: [
        Image(image:AssetImage("assets/images/Group 7.png")),
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
         backgroundColor:Colors.black ,
      appBar: AppBar(
        leading:Image.asset("assets/images/logo 1.png"),
        backgroundColor:Colors.black,
      ),
      body: Center(
        // child:Column(children: [
        //   Image(image:AssetImage("assets/images/img.png")),
        // ],)
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Color(0xff051019),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size:40, 
            // color:Color(0xff395161) ,
            ),
             label: " "
          ),
        
            //  padding:EdgeInsets.all(8.0),
            BottomNavigationBarItem(
            icon: Icon(Icons.business, size:40, color:Color.fromARGB(255, 143, 143, 143) ,),
            label: " "
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, size:40, color:Color.fromARGB(255, 143, 143, 143) ,),
           label: " ",
           
          ),
          //  BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          // ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        selectedItemColor:Color(0xff05BBF9),
        onTap: _onItemTapped,
      ),
    );
  }
}
