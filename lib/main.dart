import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import "package:sharbel_project1/all_sliders.dart";
import "package:sharbel_project1/all_switches.dart";
import "package:sharbel_project1/done.dart";
import "package:sharbel_project1/globals.dart";
import 'package:sharbel_project1/user_input.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => GlobalVariables(), child: const MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

// bool isSwitched = false;
// var mySwitches = ["Switch 1", "Switch 2", "Switch 3", "Switch 4"];
var mySliders = ["Slider 1", "Slider 2", "Slider 3"];

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 191, 197, 174),
        body: ListView(
          children: const [
            Padding(padding: EdgeInsets.only(top: 50)),
            UserInput(),
            AllSwitches(),
            AllSliders(),
            DoneButton(),
          ],
        ),
      ),
    );
    // );
  }
}
