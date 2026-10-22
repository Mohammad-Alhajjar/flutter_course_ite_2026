import 'employee.dart';
import 'bank_account.dart';

void main(List<String> args) {
  // Employee ahmad = Employee(name: "Ahmad", salary: 1000);
  // print(ahmad.calculateSalary());

  // Employee noor = Employee(name: "Noor", salary: 500);
  // print(noor.calculateSalary());

  HourlyEmployee abd = HourlyEmployee(
    name: "Abd",
    salaryPerHour: 10,
    hoursOfWorking: 500,
  );

  print(abd.calculateSalary());

  print("=================================");

  MonthlyEmpolyee seba = MonthlyEmpolyee(name: "Abd", salary: 1000);

  print(seba.calculateSalary());

  // Employee employee = Employee(name: "Ahmad");
  // print(employee.calculateSalary());

  Employee employee1 = HourlyEmployee(
    name: "test",
    salaryPerHour: 5,
    hoursOfWorking: 100,
  );

  print(employee1.calculateSalary());
  print(employee1.runtimeType);

  // HourlyEmployee hEmployee = Employee(name: "testE") as HourlyEmployee;
  // print(hEmployee.name);

  BankAccount account1 = BankAccount();

  // print(account1.balance);
  // account1.setBalance(1000);
  // print(account1.getBalance());

  // account1.balance = 1500;
  print(account1.balance);

  account1.balance = -5000;
  print(account1.balance);
}
