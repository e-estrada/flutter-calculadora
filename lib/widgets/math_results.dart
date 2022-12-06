import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:calculadora/controllers/calculator_controller.dart';

class MathResult extends StatelessWidget {

  final calculatorController = Get.find<CalculatorController>();
  // const MathResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        SubResult( text: '${calculatorController.firstNumber}' ),
        SubResult( text: '${calculatorController.operation}' ),
        SubResult( text: '${calculatorController.secondNumber}' ),
        LineSeparator(),
        MainResultText( text: '${calculatorController.mathResult}' ),
      ],
    ));
  }
}