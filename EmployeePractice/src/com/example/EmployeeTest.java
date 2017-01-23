package com.example;	// package name

public class EmployeeTest {  // creating class

		public int Employeeid;
		public String Employeename;
		public String Employeessn;
		public double Employeesalary;
		
		public EmployeeTest (){	// constructors
	
		}
		
		//  generating getters and setters
		public int getEmployeeid() {
			return Employeeid;
		}
		public void setEmployeeid(int employeeid) {
			Employeeid = employeeid;
		}
		public String getEmployeename() {
			return Employeename;
		}
		public void setEmployeename(String employeename) {
			Employeename = employeename;
		}
		public String getEmployeessn() {
			return Employeessn;
		}
		public void setEmployeessn(String employeessn) {
			Employeessn = employeessn;
		}
		public double getEmployeesalary() {
			return Employeesalary;
		}
		public void setEmployeesalary(double employeesalary) {
			Employeesalary = employeesalary;
		}
		
		// creating the main 
		public static void main (String[] args){
			
			EmployeeTest Employee = new EmployeeTest();	// creating an object
			
			// assigning the values using setters
			Employee.setEmployeeid(101);
			Employee.setEmployeename("Jane Smith");
			Employee.setEmployeessn("012-34-4567");
			Employee.setEmployeesalary(120_345.27);
			
			 // printing the statement using getters
			System.out.println(" EmployeeID:"+Employee.getEmployeeid());
			System.out.println(" Employeename:"+ Employee.getEmployeename());
			System.out.println(" Employeessn:"+ Employee.getEmployeessn());
			System.out.println(" Employeesalary:"+ Employee.getEmployeesalary());
			
		}
			


	}
