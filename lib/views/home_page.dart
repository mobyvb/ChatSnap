import 'package:flutter/material.dart';
import 'package:chat_snap/views/contact_page.dart';
import 'package:chat_snap/views/camera_page.dart';
import 'package:chat_snap/services/hello_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _sayHello() {
    print("helloooo");
    HelloService.SayHello();
  }

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
            ContactPage(
              names: ["Meshia", "Mitch", "Moby", "Monica", "Melvin"]
            ),
            CameraPage(),
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sayHello,
        tooltip: 'say hello',
        child: Icon(Icons.add),
      ),
    );
  }
}
