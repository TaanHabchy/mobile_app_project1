import 'package:flutter/material.dart';

class BasicSwitch extends StatelessWidget {
  bool currentSwitch = false;
  final String title;
  final ValueChanged<bool> onChanged;

  BasicSwitch(this.currentSwitch, this.title, this.onChanged, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
        ),
        Switch(
          value: currentSwitch,
          activeColor: const Color.fromARGB(255, 122, 164, 214),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
