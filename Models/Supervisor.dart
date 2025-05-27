import 'Employee.dart';

class Supervisor {
  String name;
  int id;
  List <Employee> Employeeunderthisadmin = [];
 

  Supervisor({required this.name, required this.id, });

  void addempolyee(Employee employee){
    Employeeunderthisadmin.add(employee);
  }

  void displayEmployees() {
  if (Employeeunderthisadmin.isEmpty) {
    print("Supervisor $name has no assigned employees.");
  } else {
    print("Employees under Supervisor $name:");
    for (var emp in Employeeunderthisadmin) {
      print(emp.name);
    }
  }
}
}