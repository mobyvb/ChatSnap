import 'package:flutter/material.dart';
import 'package:chat_snap/contact_page.dart';
import 'package:chat_snap/camera_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //elevation: 0.0,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: PageView(
          children: <Widget>[
            ContactPage(),
            CameraPage(),
          ]
        )
      ),
    );
  }
}
