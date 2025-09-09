import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final onpress;
//Constructor for initializaation the some preperties and call with class name
  const ReusableCard({required this.color, this.cardChild,this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,

      child: Container(
        height: 200,
        width: 150,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
