import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: metaApp(),
    );}}
class metaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Container(
              child: Row(children: [
                Image.asset('assets/images/ican.png'),
                Image.asset('assets/images/img.png'),
                Image.asset('assets/images/img.png'),
              ],) 
              
              ),
          backgroundColor: Colors.black12,
        ),
        body: Container(
            child: Image.asset('assets/images/img.png'))

    );
  }}
