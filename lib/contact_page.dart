import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key, this.names}) : super(key: key);

  final List<String> names;

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

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
          child: Text(
              widget.names[index]
          ),
        );
      }
    );
  }
}