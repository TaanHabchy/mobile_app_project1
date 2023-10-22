import 'package:flutter/material.dart';
import 'package:sharbel_project1/globals.dart';
import "sliders.dart";
import 'package:provider/provider.dart';

class AllSliders extends StatefulWidget {
  const AllSliders({super.key});

  @override
  SliderColumnState createState() => SliderColumnState();
}

class SliderColumnState extends State<AllSliders> {
  @override
  Widget build(BuildContext context) {
    final globalVariables = context.read<GlobalVariables>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.only(top: 40)),
        SliderWidget("Slider 1", globalVariables.slid1, (value) {
          setState(() {
            globalVariables.slid1 = value;
          });
        }),
        SliderWidget("Slider 2", globalVariables.slid2, (value) {
          setState(() {
            globalVariables.slid2 = value;
          });
        }),
        SliderWidget("Slider 3", globalVariables.slid3, (value) {
          setState(() {
            globalVariables.slid3 = value;
          });
        }),
      ],
    );
  }
}
