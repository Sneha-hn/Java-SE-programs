package com.example;

import com.example.domain.Employee;

public class EmployeeTest {

	public static void main(String[] args) {
		// creating an objects of the Employee and importing the file.
		 Employee Emp = new Employee();
		 
		 // setting the values for the classes created in the package Employee
		 	Emp.setEmpid(101);
		 	Emp.setName("Jane Smith");
		 	Emp.setSsn("012-34-5678");
		 	Emp.setSalary(120_345.27);
		 	
		 	// Printing the values for the above classes
		 	
		 	System.out.println("EmployeeID:"+Emp.getEmpid());
		 	System.out.println("EmployeeName:"+Emp.getName());
		 	System.out.println("Employee soc sec# :"+Emp.getSsn());
		 	System.out.println("Employee salary :"+ Emp.getSalary());
		 	
		 	
	}

}
