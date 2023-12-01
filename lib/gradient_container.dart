import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  void rollDice() {
    // ...
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
          child: Column(mainAxisSize: MainAxisSize.min,
          children: [
        Image.asset('assets/images/dice-1.png', width: 200, height: 200),
        const SizedBox(height: 20),
        TextButton(onPressed: rollDice, 
        style: TextButton.styleFrom(
          // padding: const EdgeInsetsDirectional.only(top: 20),
          foregroundColor: Colors.white,
          // backgroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 28,
          )
        ),
        child: const Text('Roll Dice'))
      ])),
    );
  }
}

// Method two

/*
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2 {super.key});

  final Color color1;
  final Color color2;

  // colors: [
  //             Color.fromARGB(255, 26, 2, 80),
  //             Color.fromARGB(255, 45, 7, 98),
  //           ]


  @override
  Widget build(context) {
    return   Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2], begin: startAlignment, end:endAlignment ),
          ),
          child: const Center(
            child: StyledText("שלום יוני אטדגי")
          ),
        );
  }
}
*/


