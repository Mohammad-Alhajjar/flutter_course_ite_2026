// ignore_for_file: strict_top_level_inference

void main() {
  List<List<String>> students = [
    ["Ahmad", "Nour"],
    ["Abd", "MHD"],
    ["Rami", "Rana"],
  ];

  print(students[1][1]);

  Map user = {
    "name": "Abeer",
    "email": "abeer@gmail.com",
    "phone": "0123456789",
    "address": {
      "country": "Syria",
      "city": "Aleppo",
      "street": "SaadAllah Jabri",
      "building_number": "BL 10",
    },
  };

  print(user["address"]["building_number"]);
  print(user["address"].values.elementAt(3));
  // print(user["address"].elementAt(2));

  Map<String, dynamic> product = {
    "products": [
      {
        "id": 1,
        "title": "Essence Mascara Lash Princess",
        "tags": ["beauty"],
        "weight": 4,
        "dimensions": {"width": 15.14},
        "reviews": [
          {"rating": 3, "comment": "Would not recommend!"},
        ],
        "meta": {"barcode": "5784719087687"},
      },
      {
        "id": 1,
        "title": "Essence Mascara Lash Princess",
        "tags": ["beauty"],
        "weight": 4,
        "dimensions": {"width": 15.14},
        "reviews": [
          {"rating": 3, "comment": "Would not recommend!"},
        ],
        "meta": {"barcode": "5784719087687"},
      },
    ],
  };

  print(product["products"][0]["meta"]["barcode"]);

  print(product["products"][0]["reviews"][0]["comment"]);

  Set names = {"Ahmad", "Nour"};

  int result1 = addTwoNumbers(10, 50);
  print(result1);
  int result2 = addTwoNumbers(20, 25);
  print(result2);

  int minusResult = minusTwoNumbersWithPositionalParams(5, 10);
  print(minusResult);

  int minusResult2 = minusTwoNumbersWithRequiredParams(
    secondNumber: 20,
    firstNumber: 50,
  );
  print(minusResult2);

  double multiResult = multiThreeNumbersWithThridOptionalParameter(
    firstNumber: 10,
    secondNumber: 2,
  );
  print(multiResult.toInt());
  print(multiResult);

  double multiResult2 = multiThreeNumbersWithThridOptionalParameter(
    firstNumber: 10,
    secondNumber: 2,
    thirdNumber: 50,
  );
  print(multiResult2.toInt());
  print(multiResult2);

  double divideResult = divideTwoNumbers(10, 5, 10);
  print(divideResult);

  // ?
  // *
  // Todo

  // ! Null Safety

  late int counter;
  counter = 20;
  print(counter);

  // int sum = counter! +10;

  int sum = (counter ?? 0) + 10;
  print(sum);

  List<String>? cars;
}

int addTwoNumbers(int firstNumber, int secondNumber) {
  int sum = firstNumber + secondNumber;
  // print(sum);
  return sum;
}

int minusTwoNumbersWithPositionalParams(int firstNumber, int secondNumber) {
  int result = firstNumber - secondNumber;
  return result;
}

int minusTwoNumbersWithRequiredParams({
  required int firstNumber,
  required int secondNumber,
}) {
  int result = firstNumber - secondNumber;
  return result;
}

double multiThreeNumbersWithThridOptionalParameter({
  required int firstNumber,
  required int secondNumber,
  int thirdNumber = 1,
}) {
  double multiplyResult = (firstNumber * secondNumber * thirdNumber).toDouble();
  return multiplyResult;
}

double divideTwoNumbers(
  int firstNumber,
  int secondNumber, [
  int thirdNumber = 1,
]) {
  double divResult = (firstNumber / secondNumber) * thirdNumber;
  return divResult;
}

double divideTwoNumbersWithPostionalAndOptionalNamedParams(
  int firstNumber,
  int secondNumber, {
  int thirdNumber = 1,
}) {
  double divResult = (firstNumber / secondNumber) * thirdNumber;
  return divResult;
}
