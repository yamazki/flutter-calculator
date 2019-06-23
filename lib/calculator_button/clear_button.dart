import 'package:flutter/material.dart';
import './calculator_button.dart';

class ClearButton extends CalculatorButton {

  ClearButton({String buttonText, TextEditingController textEditingController })
      : super(buttonText, textEditingController);

  @override
  void buttonOnPressed() {
    switch(super.buttonText) {
      case("AC"):
        super.textEditingController.text = "";
        break;
      case("C"):
        super.textEditingController.text =
        super.textEditingController.text.substring(0, super.textEditingController.text.length-1);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: buttonOnPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        child: Text(
          super.buttonText,
          style: TextStyle(fontSize: 40,)
        ),
      ),
    );
  }

}