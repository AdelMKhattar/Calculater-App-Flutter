import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class BasicCalculaterController extends GetxController {
  late String expression = "";
  double result = 0;
  String resultText = "";
  double expressionTextSize = 45;
  double resultTextSize = 30;

  numberPressed(String num) {
    resultTextSize = 30;
    expressionTextSize = 45;
    // to check if the input is not an operand.
    // 4++ this is not allowed
    // while the user is entering number the result will be updated and continuously unless he entered a double operands
    //it will show an error message.
    List<String> ops = ["+", "-", "*", "/"];
    if (expression.isEmpty && ops.contains(num)) {
      return;
    }
    if (!ops.contains(num)) {
      expression = expression + num;
      calculate();
    } else if (ops.contains(
        expression.substring(expression.length - 1, expression.length))) {
      //if the user enters an operand twice in a row the first one will be replaced by the last entered.
      expression = expression.substring(0, expression.length - 1) + num;
      update();
    } else {
      expression = expression + num;
      update();
    }
  }

  clearExpression() {
    expression = "";
    resultText = "";
    expressionTextSize = 45;
    resultTextSize = 30;
    update();
  }

  calculate() {
    try {
      Parser p = Parser();
      Expression e = p.parse(expression);
      ContextModel cm = ContextModel();
      result = e.evaluate(EvaluationType.REAL, cm);
      resultText = "= $result";
      update();
    } catch (e) {
      resultText = "= error";
      update();
    }
  }

  equalPressed() {
    resultTextSize = 45;
    expressionTextSize = 30;
    update();
  }

  backSpace() {
    expression = expression.isEmpty
        ? ""
        : expression.substring(0, expression.length - 1);
    expressionTextSize = 45;
    resultTextSize = 30;

    update();
  }

  percentagePressed() {
    List<String> ops = ["+", "-", "*", "/"];
    if (expression.isEmpty) {
      return;
    } else if (ops.contains(
        expression.substring(expression.length - 1, expression.length))) {
      return;
    } else {
      String newExpression = "$expression/100";
      Parser p = Parser();
      Expression e = p.parse(newExpression);
      ContextModel cm = ContextModel();
      result = e.evaluate(EvaluationType.REAL, cm);
      resultText = "= $result";
      expression = "$result";
      update();
    }
  }
}
