import 'dart:math';
import 'package:flutter/material.dart';
class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi=0;

//Methods1
  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  //Method2 for check condiction
  //formula for finding BMI(mass/height/100,^2
  String getResult(){
    if(_bmi>=25){
      return 'Over Weight';
    }
    else if(_bmi>=18.5){
      return 'Normel  Weight';
    }
    else{
      return 'Under Weight';
    }
  }
//Method 3 for give a advise
  String getadvise(){
    if(_bmi>=25){
      return 'you have a higher than Normel body weight,Try to exercise more';
    }
    else if(_bmi>=18.5){
      return 'You have Normel body weight,Good Jobs';
    }
    else{
      return 'you have a lower than Normel body weight,you can eat a bit more';
    }
  }
}