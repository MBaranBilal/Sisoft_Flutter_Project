import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/textlll.dart';

class Location extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Welcome to Our Application"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Textlll(Colors.red),
          Textlll(Colors.lime),
          Textlll(Colors.teal),
      ]),
    );
  }
}