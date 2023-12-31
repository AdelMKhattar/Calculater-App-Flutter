import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class NumbersController extends GetxController {
  late String expression = "";
  double result = 0;
  String resultText = "";
  double expressionTextSize = 45;
  double resultTextSize = 20;
  numberPressed(String num) {
    expression = expression + num;
    update();
  }

  clearExpression() {
    expression = "";
    resultText = "";
    expressionTextSize = 45;
    resultTextSize = 20;
    update();
  }

  calculate() {
    try {
      Parser p = Parser();
      Expression e = p.parse(expression);
      ContextModel cm = ContextModel();
      result = e.evaluate(EvaluationType.REAL, cm);
      resultText = result.toString();

      resultTextSize = 45;
      expressionTextSize = 30;
      update();
    } catch (e) {
      resultText = "error";
      update();
    }
  }

  backSpace() {
    expression = expression.isEmpty
        ? ""
        : expression.substring(0, expression.length - 1);
    expressionTextSize = 45;
    resultTextSize = 20;

    update();
  }

  showExpression() {
    update();
  }
}
