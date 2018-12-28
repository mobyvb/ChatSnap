import 'package:flutter/material.dart';
import 'package:chat_snap/home_page.dart';

void main() => runApp(ChatSnap());

class ChatSnap extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatSnap',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(title: 'ChatSnap'),
      // debugShowCheckedModeBanner: false,
    );
  }
}

