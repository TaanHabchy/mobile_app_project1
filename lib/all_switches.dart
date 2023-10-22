import 'package:flutter/material.dart';
import 'package:sharbel_project1/globals.dart';
import "basic_switch.dart";
import 'package:provider/provider.dart';

class AllSwitches extends StatefulWidget {
  const AllSwitches({super.key});

  @override
  SwitchColumn createState() => SwitchColumn();
}

class SwitchColumn extends State<AllSwitches> {
  @override
  Widget build(BuildContext context) {
    final globalVariables = context.read<GlobalVariables>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.only(top: 40)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(padding: EdgeInsets.only(top: 0)),
            BasicSwitch(globalVariables.clicked1, "Switch 1", (value) {
              setState(() {
                globalVariables.clicked1 = value;
              });
            }),
            const Padding(padding: EdgeInsets.only(left: 100)),
            BasicSwitch(globalVariables.clicked2, "Switch 2", (value) {
              setState(() {
                globalVariables.clicked2 = value;
              });
            }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BasicSwitch(globalVariables.clicked3, "Switch 3", (value) {
              setState(() {
                globalVariables.clicked3 = value;
              });
            }),
            const Padding(padding: EdgeInsets.only(left: 100)),
            BasicSwitch(globalVariables.clicked4, "Switch 4", (value) {
              setState(() {
                globalVariables.clicked4 = value;
              });
            }),
          ],
        ),
      ],
    );
  }
}
