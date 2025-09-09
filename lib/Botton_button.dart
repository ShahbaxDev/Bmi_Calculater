import 'package:flutter/material.dart';
import '../Constants.dart';
//Contructor for botton container that we can be tap onit
class BottonButton extends StatelessWidget {
  BottonButton({required this.ontap, required this.bottonTitle});
  final ontap;
  final bottonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
            child: Text(
              'CALCULATE',
              style: kBottonContainerStyle,
            )),
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
      ),
    );
  }
}
