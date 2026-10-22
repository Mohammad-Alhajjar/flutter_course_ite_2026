// ignore_for_file: prefer_final_fields, unused_field

class BankAccount {
  double _balance = 0;

  // double getBalance() {
  //   return _balance;
  // }

  double? get balance {
    if (_balance > 0) {
      return _balance;
    } else {
      print("your account empty...");
    }
    return _balance;
  }

  // void setBalance(double newBalance) {
  //   print("============new balance added to your account..");
  //   _balance = newBalance;
  // }

  set balance(double newBalance) {
    print("============new balance added to your account..");
    if (newBalance <= 0) {
      print("error: unvalid value of balance ... ");
    } else {
      _balance = newBalance;
    }

    // _balance = newBalance;
  }
}
