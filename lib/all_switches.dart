import 'package:flutter/material.dart';
import "basic_switch.dart";

class allSwitches extends StatefulWidget {
  @override
  _switchColumn createState() => _switchColumn();
}

class _switchColumn extends State<allSwitches> {
  bool clicked1 = false;
  bool clicked2 = false;
  bool clicked3 = false;
  bool clicked4 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(top: 0)),
        BasicSwitch(clicked1, "Switch 1", (value) {
          setState(() {
            clicked1 = value;
          });
        }),
        BasicSwitch(clicked2, "Switch 2", (value) {
          setState(() {
            clicked2 = value;
          });
        }),
        BasicSwitch(clicked3, "Switch 3", (value) {
          setState(() {
            clicked3 = value;
          });
        }),
        BasicSwitch(clicked4, "Switch 4", (value) {
          setState(() {
            clicked4 = value;
          });
        }),
      ],
    );
  }
}
