import 'package:math_expressions/math_expressions.dart';

class Calculatorfunctions {
  //define the expression and result variable
  String expression = '';
  String result = '';
  // function that handles what button is clicked and evaluates the expression
  void performbuttonaction(String buttontext) {
    if (buttontext == 'C') {
      expression = '';
      result = '';
    } else if (buttontext == 'del') {
      if (expression.isEmpty) {
        return;
      }
      expression = expression.substring(0, expression.length - 1);
    } else if (buttontext == '=') {
      try {
        Parser parser = Parser();
        Expression exp = parser.parse(expression);
        ContextModel context = ContextModel();
        final evaluateexpression = exp.evaluate(EvaluationType.REAL, context);
        result =
            '${isInteger(evaluateexpression) ? (evaluateexpression as num).ceil() : evaluateexpression}';
        expression = result;
      } catch (e) {
        result = 'error $e';
      }
    } else {
      expression += buttontext;
    }
  }

  //function that checks if value is integer or not
  bool isInteger(num value) => value is int || value == value.roundToDouble();
  // void isInteger(num value) {
  //   if (value == value.roundToDouble()) {
  //     value is int;
  //   }
  // }
}
// bool isInteger (num value) => value is int || value == value.roundToDouble();