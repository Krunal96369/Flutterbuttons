import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TextEditingController inputController = new TextEditingController();
  var ty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Page 2'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: inputController,
            //obscureText: false,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'PLEASE ENTER TEXT',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 50,
            width: 30,
          ),
          MaterialButton(
            color: Colors.deepPurpleAccent,
            child: Text(ty),
            onPressed: () {
              setState(() {
                ty = inputController.text;
              });
            },
          ),
          RaisedButton(
            child: Text('search'),
            onPressed: () {
              Fluttertoast.showToast(
                  msg: inputController.text,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          )
        ],
      ),
    );
  }
}
