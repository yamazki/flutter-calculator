import 'package:flutter/material.dart';
import './calculator_button.dart';

class NumberButton extends CalculatorButton {

  NumberButton({String buttonText, TextEditingController textEditingController })
      : super(buttonText, textEditingController);

  @override
  void buttonOnPressed() {
    super.textEditingController.text += super.buttonText;
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.grey[100],
      onPressed: buttonOnPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        child: Text(
            super.buttonText,
            style: TextStyle(fontSize: 40)
        ),
      ),
    );
  }

}