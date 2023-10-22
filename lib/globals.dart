import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GlobalVariables with ChangeNotifier {
  bool clicked1 = false;
  bool clicked2 = false;
  bool clicked3 = false;
  bool clicked4 = false;

  double slid1 = 50;
  double slid2 = 50;
  double slid3 = 50;

  var named = "";
  TextEditingController textController = TextEditingController();
}
