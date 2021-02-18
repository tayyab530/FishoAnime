import 'package:fish_animation/src/widgets/fish.dart';
import 'package:flutter/material.dart';

class Acqurium extends StatefulWidget {
  _AcquriumState createState() => _AcquriumState();
}

class _AcquriumState extends State<Acqurium> with TickerProviderStateMixin {
  final url1 = 'https://media.istockphoto.com/photos/fish-isolated-with-scales-river-crucian-carp-picture-id1037503798?k=6&m=1037503798&s=612x612&w=0&h=FlUPH5YQw9yiLTf3qBWKmdWvHEBKUK9D_O4gpH89pMI=';
  final url2 = 'https://thegraphicsfairy.com/wp-content/uploads/2015/07/Free-Fish-Clip-Art-GraphicsFairy.jpg';

  Animation<double> fishAnimation;
  AnimationController fishController;

  void initState() {
    super.initState();

    fishController = AnimationController(
      duration: Duration(
        seconds: 5,
      ),
      vsync: this,
    );

    fishAnimation = Tween(begin: 0.0, end: 800.0).animate(
      CurvedAnimation(
        parent: fishController,
        curve: Curves.easeInOut,
      ),
    );

    fishController.repeat();
  }

  onTap(){

    // if(fishAnimation.status == AnimationStatus.forward){
    //   fishController.reverse();
    // }
    // else{
    //   fishController.forward();
    // }
      
  }

  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        overflow: Overflow.visible,
        children: [
          
        buildFishAnimation1(),
        buildFishAnimation2(),
        ],
      ),
    );
  }

  Widget buildFishAnimation1() {
    return AnimatedBuilder(
      animation: fishAnimation,
      builder: (ctx, child) {
        return Positioned(
          child: child,
          right: fishAnimation.value - 100.0,
        );
      },
      child: GestureDetector(
        child: Container(
          width: 100.0,
          child: Fish(url1)),
        onTap: onTap,
        ),
    );
  }

  Widget buildFishAnimation2() {
    return AnimatedBuilder(
      animation: fishAnimation,
      builder: (ctx, child) {

        return Positioned(
          child: child,
          left: fishAnimation.value - 100.0,
          top: 200.0,
        );
      },
      child: GestureDetector(
        child: Fish(url2),
        onTap: onTap,
        ),
    );
  }
}
