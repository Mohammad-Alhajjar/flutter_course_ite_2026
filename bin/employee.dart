abstract class Employee {
  String name;

  Employee({required this.name});

  double calculateSalary();
}

class HourlyEmployee extends Employee {
  double salaryPerHour;
  double hoursOfWorking;

  HourlyEmployee({
    required super.name,
    required this.salaryPerHour,
    required this.hoursOfWorking,
  });

  @override
  double calculateSalary() {
    return salaryPerHour * hoursOfWorking;
  }
}

class MonthlyEmpolyee extends Employee {
  double salary;
  MonthlyEmpolyee({required super.name, required this.salary});

  @override
  double calculateSalary() {
    return salary;
  }
}
