import 'package:flutter/material.dart';

class Fish extends StatelessWidget {
  final url;
  
  Fish(this.url);

  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Image.network(url),
    );
  }
}