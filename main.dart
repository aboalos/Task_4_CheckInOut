import 'Models/Employee.dart';
import 'Models/Supervisor.dart';
import 'System.dart';

void main(){
var system = System();

var emp1 = Employee(name: "Osama", id: 1, hourIn: "7AM", hourOut: "5PM");
var emp2 = Employee(name: "Ali", id: 2, hourIn: "8AM", hourOut: "4PM");
var sup1 = Supervisor(name: "Mr. Ahmad", id: 101);

system.addemployee(emp1);
system.addemployee(emp2);
//system.addvisor(sup1);

system.assignEmployee(sup1, emp1);
system.assignEmployee(sup1, emp2);

system.CheckinOut(1,"7AM","Osama","5PM");
system.Showallemp(sup1);
}