import 'package:flutter/material.dart';

abstract class CalculatorButton extends StatelessWidget{

  final String buttonText;
  final TextEditingController textEditingController;

  CalculatorButton (this.buttonText, this.textEditingController);

  void buttonOnPressed();

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



