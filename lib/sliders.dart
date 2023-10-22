import 'package:flutter/material.dart';
import 'globals.dart';

class SliderWidget extends StatelessWidget {
  final String title;
  double value = 50;
  final ValueChanged<double> onChanged;

  SliderWidget(this.title, this.value, this.onChanged, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontSize: 18)),
        Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: onChanged,
          label: value.toInt().toString(),
          activeColor: const Color.fromARGB(255, 122, 164, 214),
        ),
        Text(value.toInt().toString()),
      ],
    );
  }
}
