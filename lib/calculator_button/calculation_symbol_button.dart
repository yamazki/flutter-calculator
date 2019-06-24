import 'package:flutter/material.dart';
import './calculator_button.dart';

class CalculationSymbolButton extends CalculatorButton {

  CalculationSymbolButton({String buttonText, TextEditingController textEditingController })
      :super(buttonText, textEditingController);

  @override
  void buttonOnPressed() {
    super.textEditingController.text += " ${super.buttonText} ";
  }

}