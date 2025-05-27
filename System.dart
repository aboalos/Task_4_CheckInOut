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

void CheckinOut (Employee employee){
print ("The employee ${employee.name} who has the id ${employee.id} arrived at time of ${employee.hourIn} and left at the time of ${employee.hourOut}");
}

void Showallemp(Supervisor superVisor){
  superVisor.displayEmployees();
}

}