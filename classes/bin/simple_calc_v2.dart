import 'dart:io';

void main(List<String> args) {
  Calculator calculator = Calculator();
  calculator.start();
}

class Calculator {
  void start() {
    print("-----Welcome to OOP Calculator!-----\n");

    while (true) {
      Operation operation = Operation();
      operation.getInputs();
      num? result = operation.perform();

      if (result != null) {
        print("Result: $result");
      } else {
        print("Invalid input or operation, please try again!\n");
      }

      print("Do you want to continue? (y/n):");
      String? choice = stdin.readLineSync();
      if (choice?.toLowerCase() != "y") {
        print("GoodBye!!!");
        break;
      }
      print("\n------------------------------\n");
    }
  }
}

class Operation {
  int? leftHandSideNumber;
  int? rightHandSideNumber;
  String? operator;

  void getInputs() {
    stdout.write("Enter your first number: ");
    leftHandSideNumber = int.tryParse(stdin.readLineSync() ?? "");

    stdout.write("Enter operation(+ for Addition OR - for Subtraction): ");
    operator = stdin.readLineSync();

    stdout.write("Enter your second number: ");
    rightHandSideNumber = int.tryParse(stdin.readLineSync() ?? "");
  }

  num? perform() {
    if (leftHandSideNumber == null ||
        rightHandSideNumber == null ||
        operator == null) {
      print("$leftHandSideNumber, $operator ,$rightHandSideNumber");
      return null;
    }
    switch (operator) {
      case "+":
        return leftHandSideNumber! + rightHandSideNumber!;
      case "-":
        return leftHandSideNumber! - rightHandSideNumber!;
      default:
        return null;
    }
  }
}
