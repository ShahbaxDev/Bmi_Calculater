import 'package:flutter/material.dart';
import '../Constants.dart';
class iconContent extends StatelessWidget {
  final IconData icon;
  final String label;
//Contructor for any change in icons and label for text like male and female
  iconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
          color: Colors.white70,
        ),
        const SizedBox(height: 18),
        Text(
          label,
          style:kLabeltextstyle,
        ),

      ],
    );
  }
}