import 'package:get/get.dart';


class CalculatorController extends GetxController {

  var firstNumber  = '10'.obs;
  var secondNumber = '20'.obs;
  var mathResult   = '30'.obs;
  var operation    = '+'.obs;

  resetAll() {

    this.firstNumber.value  = '0';
    this.secondNumber.value = '0';
    this.mathResult.value   = '0';
    this.operation.value    = '+';

  }

  changeNegativePositive() {
    if ( this.mathResult.startsWith('-') ) {
      this.mathResult.value = this.mathResult.value.replaceFirst('-', '');
    } else {
      this.mathResult.value = '-' + this.mathResult.value;
    }
  }

  addNumber( String number ) {
    if ( this.mathResult.value == '0' ) {
      return this.mathResult.value = number;
    }

    if ( this.mathResult.value == '-0') {
      return this.mathResult.value = '-' + number;
      
    }

    mathResult.value += number;
  }

  addDecimalPoint() {

    if ( mathResult.contains('.') ) return;

    if ( mathResult.startsWith('0') ) {
      mathResult.value = '0.';
    } else {
      mathResult.value += '.';
    }

  }

  selectOperation( String newOperation ) {

    operation.value   = newOperation;
    firstNumber.value = mathResult.value;
    mathResult.value  = '0';

  }

  deleteLastEntry() {

    if ( mathResult.value.replaceAll('-', '' ).length > 1 ) {
      mathResult.value = mathResult.value.substring( 0, mathResult.value.length - 1 );
    } else {
      mathResult.value = '0';
    }
  }

  calculateResult() {

    double num1 = double.parse( firstNumber.value );
    double num2 = double.parse( mathResult.value );

    secondNumber.value = mathResult.value;

    switch( operation.value ) {

      case '+':
        mathResult.value = '${ num1 + num2 }';
        break;

      case '-':
        mathResult.value = '${ num1 - num2 }';
        break;

      case '/':
        mathResult.value = '${ num1 / num2 }';
        break;

      case 'X':
        mathResult.value = '${ num1 * num2 }';
        break;
      
      default:
        return;

    }

    if ( mathResult.value.endsWith('.0') ) {
      mathResult.value = mathResult.value.substring(0, mathResult.value.length - 2 );
    }



  }
  

}