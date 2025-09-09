import 'package:flutter/material.dart';
import '../Constants.dart';
import '../reusable_card.dart';
import 'package:bmii/Botton_button.dart';

class ResultPage extends StatelessWidget {
  // Constructor for calling
  ResultPage({
    required this.bmiresult,
    required this.resulttext,
    required this.getadvise,
  });

  // Assign
  final String bmiresult;
  final String resulttext;
  final String getadvise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text('Body MASS INDEXX',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'Your Results',
                  style: kResultpageStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resulttext.toUpperCase(),
                    style: kResulttextStyle,
                  ),
                  Text(
                    bmiresult,
                    style: kBMItextStyle,

                  ),
                  Text(
                    getadvise,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          // Add the BottomButton here to display it on the screen
          BottomButton(
            bottonTitle: 'RE_CALCULATE',
            ontap: () {
              Navigator.pop(context); // Go back to the previous screen
            },
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  // Required parameters
  final String bottonTitle;
  final Function ontap;

  BottomButton({required this.bottonTitle, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(),
      child: Container(
        color: Colors.pink,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            bottonTitle,
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
