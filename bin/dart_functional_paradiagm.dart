// ignore_for_file: prefer_function_declarations_over_variables

void main() {
  Function runCode = () {
    print("running function");
  };

  Function copyFromTest = test;

  runCode();
  test();
  print("===============================");
  copyFromTest();

  print('---------------------------------------------');
  calculator(firstNumber: 10, secondNumber: 5, operation: add);
  calculator(firstNumber: 10, secondNumber: 5, operation: sub);
  calculator(firstNumber: 10, secondNumber: 5, operation: multi);
  calculator(firstNumber: 10, secondNumber: 5, operation: divie);
  calculator(
    firstNumber: 50,
    secondNumber: 5,
    operation: (int a, int b) {
      return a % b;
    },
  );
}

void test() {
  print("testing ...");
}

void calculator({
  required int firstNumber,
  required int secondNumber,
  required Function(int, int) operation,
}) {
  print(operation(firstNumber, secondNumber));
}

int add(int n1, int n2) {
  return n1 + n2;
}

int sub(int firstNumber, int secondNumber) {
  return firstNumber - secondNumber;
}

double multi(int firstNumber, int secondNumber) {
  return (firstNumber * secondNumber).toDouble();
}

double divie(int firstNumber, int secondNumber) {
  return (firstNumber.toDouble() / secondNumber.toDouble());
}
