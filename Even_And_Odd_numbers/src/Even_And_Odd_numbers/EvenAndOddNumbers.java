package Even_And_Odd_numbers;

import java.util.Scanner;

public class EvenAndOddNumbers {

	public static void main(String[] args) {
		System.out.println("Enter a number");	 // to print the statement
		Scanner scan0= new Scanner(System.in); // taking the input with scan 0  
		int i; // declaring the i
		i= scan0.nextInt();		// input statement
		do{	// for iterative statement
		
		if ( i%2== 0) {	// module is used bcs the number divisible by 2 must have remainder as zero
			System.out.println("the value is even"); 	// print statement
			
		 
	 }
		else
			System.out.println("the value is odd"); // print the statement
		System.out.println("Enter a number");	// for iterative output the output statement is re enetered
		i= scan0.nextInt();	// input statement this is re written to continue the loop
			}while(i!=0); // if i!= 0 then the statement continues else the loop continues
		}
	}

