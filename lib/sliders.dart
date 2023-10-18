import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final String title;
  double value = 50;
  final ValueChanged<double> onChanged;

  SliderWidget(this.title, this.value, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: 18)),
        Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: onChanged,
        ),
        Text(value.toInt().toString()),
      ],
    );
  }
}
