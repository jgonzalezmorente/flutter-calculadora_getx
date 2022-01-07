import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculadora/widgets/math_results.dart';
import 'package:calculadora/widgets/calc_button.dart';


class CalculatorScreen extends StatelessWidget {

  final calulatorCtrl = Get.put( CalculatorController() );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: 10 ),
          child: Column(
            children: [
              
              Expanded(
                child: Container(),
              ),

              MathResults(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: 'AC',
                    bgColor: Color(0xffA5A5A5 ),
                    onPressed: calulatorCtrl.resetAll,
                  ),
                  CalculatorButton( 
                    text: '+/-',
                    bgColor: Color(0xffA5A5A5 ),
                    onPressed: () => print('+/-'),
                  ),
                  CalculatorButton( 
                    text: 'del',
                    bgColor: Color(0xffA5A5A5 ),
                    onPressed: () => calulatorCtrl.deleteLastEntry(),
                  ),
                  CalculatorButton( 
                    text: '/',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calulatorCtrl.selectOperation('/'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '7',
                    onPressed: () => calulatorCtrl.addNumber( '7' ),
                  ),
                  CalculatorButton( 
                    text: '8',
                    onPressed: () => calulatorCtrl.addNumber( '8' ),
                  ),
                  CalculatorButton( 
                    text: '9',
                    onPressed: () => calulatorCtrl.addNumber( '9' ),
                  ),
                  CalculatorButton( 
                    text: 'X',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calulatorCtrl.selectOperation('X'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '4', 
                    onPressed: () => calulatorCtrl.addNumber( '4' ),
                  ),
                  CalculatorButton( 
                    text: '5', 
                    onPressed: () => calulatorCtrl.addNumber( '5' ),
                  ),
                  CalculatorButton( 
                    text: '6', 
                    onPressed: () => calulatorCtrl.addNumber( '6' ),
                  ),
                  CalculatorButton( 
                    text: '-',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: calulatorCtrl.changeNegativePositive,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '1', 
                    onPressed: () => calulatorCtrl.addNumber( '1' ),
                  ),
                  CalculatorButton( 
                    text: '2', 
                    onPressed: () => calulatorCtrl.addNumber( '2' ),
                  ),
                  CalculatorButton( 
                    text: '3', 
                    onPressed: () => calulatorCtrl.addNumber( '3' ),
                  ),
                  CalculatorButton(
                    text: '+',  
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calulatorCtrl.selectOperation('+'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '0', 
                    big: true,
                    onPressed: () => calulatorCtrl.addNumber( '0' ),
                  ),
                  CalculatorButton( 
                    text: '.', 
                    onPressed: () => calulatorCtrl.addDecimalPoint(),
                  ),
                  CalculatorButton( 
                    text: '=',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calulatorCtrl.calculateResult(),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
   );
  }
}