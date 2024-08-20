import 'package:flutter/material.dart';

class Textlll extends StatelessWidget {
  Color ? c;
  Textlll(this.c);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: c),
    );
  }

  
}
