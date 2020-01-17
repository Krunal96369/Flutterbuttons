import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop1/nextpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'fubar',
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  double height = 50;
  double width = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black87,
      appBar: AppBar(
          title: Text("animated container"), backgroundColor: Colors.redAccent),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        width: width,
        height: height,
        color: Colors.indigo,
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            child: Text(
              "krunal",
            ),
            onPressed: () {
              setState(() {
                Random random = Random();
                height = random.nextInt(300).toDouble();
                width = random.nextInt(300).toDouble();
              });
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: Text(
              "Page2",
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NextPage()));
            },
          ),
        ],
      ),
    );
  }
}
