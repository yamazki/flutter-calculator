import 'package:flutter/material.dart';
import './calculator_button.dart';

class CalculationSymbolButton extends CalculatorButton {

  CalculationSymbolButton({String buttonText, TextEditingController textEditingController })
      :super(buttonText, textEditingController);

  @override
  void buttonOnPressed() {
    super.textEditingController.text += " ${super.buttonText} ";
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: buttonOnPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        child: Text(
            this.buttonText,
            style: TextStyle(fontSize: 40)
        ),
      ),
    );
  }

}