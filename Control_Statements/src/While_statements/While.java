package While_statements;

import java.util.Scanner;

public class While {

	public static void main(String[] args) {
	Scanner sc=new Scanner (System.in);
	System.out.println("enter your choice");
	int input=sc.nextInt();
	while(input<=10)
	{
		System.out.println(input);
		input=input+1;
	}

	}

}
