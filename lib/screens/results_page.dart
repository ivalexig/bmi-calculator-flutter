import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResults,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Container(
                padding: EdgeInsets.only(right: 10.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResults,
                      style: kBMITextStyle,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Normal BMI range:',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            btnTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
