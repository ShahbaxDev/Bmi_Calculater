import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          //primery colour paste with key from colorzilla on google
          primaryColor: const Color(0xff090E21), //copy from colorzilla
          scaffoldBackgroundColor: const Color(0xff090E21),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: const InputBody());
  }
}
