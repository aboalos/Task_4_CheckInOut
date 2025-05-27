import 'Models/Employee.dart';
import 'Models/Supervisor.dart';

class System {
  List <Employee> _employee =[];
  List <Supervisor> _supervisor =[];


  void addemployee(Employee employee){
    _employee.add(employee);
    print("the employee ${employee.name} has been added ");
  }

   void addvisor(Supervisor superVisor){
    _supervisor.add(superVisor);
    print("the supervisor ${superVisor.name} has been added ");
    
  }
void assignEmployee (Supervisor superVisor, Employee employee){

  superVisor.addempolyee(employee);
  print("this empolyee ${employee.name} has been added to this supervisor ${superVisor.name}");
  
 
}

void CheckinOut(int empID, String hourIn, String name, String hourOut) {
  final employee = _employee.firstWhere(
    (e) => e.id == empID,
    orElse: () => throw Exception("Employee with ID $empID not found."),
  );

  // Validate name
  if (employee.name != name) {
    throw Exception("Provided name '$name' does not match the employee with ID $empID.");
  }

  // Validate hourIn
  if (employee.hourIn != hourIn) {
    throw Exception("Provided check-in time '$hourIn' does not match employee record (${employee.hourIn}).");
  }

  // Validate hourOut
  if (employee.hourOut != hourOut) {
    throw Exception("Provided check-out time '$hourOut' does not match employee record (${employee.hourOut}).");
  }

  // All good
  print("The employee $name who has the id $empID arrived at $hourIn and left at $hourOut.");
}


void Showallemp(Supervisor superVisor){
  superVisor.displayEmployees();
}

}