import 'dart:ui';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'round_iconbutton.dart';
import 'icon_content.dart';
import 'Constants.dart';
import 'Result_page.dart';
import 'Botton_button.dart';
import 'calculater_brain.dart';
import 'reusable_card.dart';

//initialization

//enum class for acces male and female gender
enum Gender {
  male,
  female,
}

class InputBody extends StatefulWidget {
  const InputBody({super.key});

  @override
  State<InputBody> createState() => _InputBodyState();
}

class _InputBodyState extends State<InputBody> {
//for Male and female gender select
  Gender? selectgender;
//height for middle and last expanded widget
  int height = 180;
  int weight = 50;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xff090E22),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          selectgender = Gender.male;
                        });
                      },
                      //Ternery operator for check condiction in only single line by replacement of if and else statement
                      color: selectgender == Gender.male
                          ? kActiveColour
                          : kInactiveColour,
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          selectgender = Gender.female;
                        });
                      },
                      //Ternery operator for check condiction in only single line by replacement of if and else statement
                      color: selectgender == Gender.female
                          ? kActiveColour
                          : kInactiveColour,
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kLabeltextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: knumberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: kLabeltextstyle,
                        ),
                      ],
                    ),
                    //Show a slide below the Text
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.pink,
                        overlayColor: Colors.pinkAccent,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 20),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          inactiveColor: Colors.white70,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabeltextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: knumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconbutton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              RoundIconbutton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        color: kActiveColour,
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'AGE',
                                style: kLabeltextstyle,
                              ),
                              Text(
                                age.toString(),
                                style: knumberTextStyle,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconbutton(
                                        icon: FontAwesomeIcons.minus,
                                        onpressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        }),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    RoundIconbutton(
                                        icon: FontAwesomeIcons.plus,
                                        onpressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        })
                                  ]),
                            ])),
                  )
                ],
              ),
            ),
            BottonButton(
                bottonTitle: ('Calculate'),
                ontap: () {
                  CalculatorBrain cal =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                bmiresult: cal.CalculateBMI(),
                                resulttext: cal.getResult(),
                                getadvise: cal.getadvise(),
                              )));
                }),
          ],
        ),
      ),
    );
  }
}
