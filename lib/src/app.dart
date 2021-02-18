import 'package:fish_animation/src/widgets/acquirium.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('FishoAnime'),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/originals/95/8c/b2/958cb28367ef93c38f237f3684fcb5c6.jpg'),
                fit: BoxFit.cover
              )
            ),
            child: Acqurium(),
          ),
        ),
      ),
    );
  }
}
