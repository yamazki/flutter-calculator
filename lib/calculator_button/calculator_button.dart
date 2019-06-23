import 'package:flutter/material.dart';

abstract class CalculatorButton extends StatelessWidget{

  final String buttonText;
  final TextEditingController textEditingController;

  CalculatorButton (this.buttonText, this.textEditingController);

  void buttonOnPressed();

}



