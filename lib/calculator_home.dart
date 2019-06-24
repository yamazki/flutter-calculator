import 'package:calculator/calculator_button/evaluate_button.dart';
import 'package:calculator/calculator_button/calculation_symbol_button.dart';
import 'package:calculator/calculator_button/clear_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'calculator_button/number_button.dart';

class Calculator extends StatefulWidget {
  @override
  createState() => CalculatorState();
}


class CalculatorState extends State<Calculator> {

  String _textFieldValue;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Caliculator')
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0)
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: _textEditingController,
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.right,
                  onChanged: (text) {
                    this._textFieldValue = text;
                  },
                )
              ),
              Container(
                padding:EdgeInsets.only(bottom: 40.0)
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4, //MediaQuery.of(context).orientation.toString() == "Orientation.portrait" ? 4 : 8,
                  padding: const EdgeInsets.all(4.0),
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 6.0,
                  crossAxisSpacing: 6.0,
                  children: <Widget>[
                    CalculationSymbolButton(buttonText:'(', textEditingController: this._textEditingController),
                    CalculationSymbolButton(buttonText:')', textEditingController: this._textEditingController),
                    ClearButton(buttonText:'C', textEditingController: this._textEditingController),
                    ClearButton(buttonText:'AC', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'7', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'8', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'9', textEditingController: this._textEditingController),
                    CalculationSymbolButton(buttonText:'÷', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'4', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'5', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'6', textEditingController: this._textEditingController),
                    CalculationSymbolButton(buttonText:'×', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'1', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'2', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'3', textEditingController: this._textEditingController),
                    CalculationSymbolButton(buttonText:'-', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'0', textEditingController: this._textEditingController),
                    NumberButton(buttonText:'.', textEditingController: this._textEditingController),
                    EvaluateButton(buttonText:'=', textEditingController: this._textEditingController),
                    CalculationSymbolButton(buttonText:'+', textEditingController: this._textEditingController),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
