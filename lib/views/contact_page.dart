import 'package:flutter/material.dart';
import 'package:chat_snap/services/hello_service.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key, this.names}) : super(key: key);

  final List<String> names;

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String res;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.names.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 4.0,
          ),
          child: FlatButton(
              onPressed: () async => _sayHello(),
              child: Text(widget.names[index])
          ),
        );
      }
    );
  }

  Future<void> _sayHello() async {
    var hello = await HelloService.sayHello();
    print(hello.response);
    setState(() {
      res = hello.response;
    });
  }
}