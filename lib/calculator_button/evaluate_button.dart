import 'package:flutter/material.dart';
import './calculator_button.dart';
import 'package:math_expressions/math_expressions.dart';

class EvaluateButton extends CalculatorButton {

  final Parser p = new Parser();
  final ContextModel cm = ContextModel();

  EvaluateButton(
      {String buttonText, TextEditingController textEditingController })
      :super(buttonText, textEditingController);

  @override
  void buttonOnPressed() {
    var text = super.textEditingController.text;
    text = text.replaceAll("×", "*").replaceAll("÷", "/");
    double eval = p.parse(text).evaluate(EvaluationType.REAL, cm);
    super.textEditingController.text = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: RaisedButton(
        color: Colors.lightBlueAccent[700],
        onPressed: buttonOnPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        child: Container(
          child: Text(
              super.buttonText,
              style: TextStyle(fontSize: 40, color: Colors.white)
          ),
        ),
      ),
    );
  }
}
