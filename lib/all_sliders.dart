import 'package:flutter/material.dart';
import "sliders.dart";

class allSliders extends StatefulWidget {
  @override
  _SliderColumnState createState() => _SliderColumnState();
}

class _SliderColumnState extends State<allSliders> {
  double beginValue = 50;
  double beginValue1 = 50;
  double beginValue2 = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SliderWidget("Slider 1", beginValue, (value) {
          setState(() {
            beginValue = value;
          });
        }),
        SliderWidget("Slider 2", beginValue1, (value) {
          setState(() {
            beginValue1 = value;
          });
        }),
        SliderWidget("Slider 3", beginValue2, (value) {
          setState(() {
            beginValue2 = value;
          });
        }),
      ],
    );
  }
}
