import 'package:flutter/material.dart';
class RoundIconbutton extends StatelessWidget {
  //Constructor for calling the different type of icons and on pressed set state
  RoundIconbutton({required this.icon, required this.onpressed});
  final IconData icon;
  final onpressed;
  @override
  Widget build(BuildContext context) {
    //Rawmaterialbutton same work like floatingactionbutton
    return RawMaterialButton(
      //call the icons from contructor
        child: Icon(icon),
        onPressed: onpressed,
        elevation: 6,
        constraints: BoxConstraints.tightFor(
          width: 60,
          height: 60,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E));
  }
}
