import 'package:flutter/material.dart';

class AppFunctions {
  static void printError(
      {required String methodName,
      required Object errorString,
      bool? isNotCrucial}) {
    try {
      debugPrint(
        "${isNotCrucial == true ? '!' : '!!!'} Error in $methodName => $errorString",
      );
    } catch (e) {
      debugPrint(
        "${isNotCrucial == true ? '!' : '!!!'} Error in $methodName => Could not parse the \$errorString",
      );
    }
  }
}
