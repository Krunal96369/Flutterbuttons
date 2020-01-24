import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:workshop1/thirdPage.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  var ty = "";
  final _db = Firestore.instance.collection("test");

  TextEditingController textThing = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
            width: 40,
          ),
          TextField(
            controller: textThing,
            //obscureText: false,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your name',
              hintStyle: TextStyle(color: Color(0xFF7E8BE8)),
            ),
          ),
          RaisedButton(
            onPressed: () {
              _db.document().setData({"text": textThing.text});

              Fluttertoast.showToast(
                  msg: textThing.text,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.brown,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Text("Raised button!!!"),
            color: Colors.brown,
            //    backgroundColor: Colors.white,
          ),
          MaterialButton(
            color: Colors.blue,
            child: Text(
              "Page3",
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RetriveData()));
            },
          ),
        ],
      ),
    );
  }
}
