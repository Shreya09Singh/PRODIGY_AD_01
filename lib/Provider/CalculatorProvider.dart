import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalCulatorProvider with ChangeNotifier {
  final comcontroller = TextEditingController();

  setValue(String val) {
    String str = comcontroller.text;

    switch (val) {
      case "C":
        comcontroller.clear();
        break;
      case "AC":
        comcontroller.text = str.substring(0, str.length - 1);
        break;
      case "X":
        comcontroller.text += "*";
        break;
      case "=":
        compute();
        break;

      default:
        comcontroller.text += val;
    }
  }

  compute() {
    String text = comcontroller.text;
    comcontroller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    comcontroller.dispose();
    super.dispose();
  }
}
