package MultiplicationTables;

import java.util.Scanner;

public class Tables {

	public static void main(String[] args) {
	@SuppressWarnings("resource")
	Scanner scan1= new Scanner (System.in);
	int t, count, total;
	System.out.println("what type of tables to be displayed?");
	t= scan1.nextInt();
	System.out.println("Till what value it should be displayed?");
	count= scan1.nextInt();
	for(int i=1; i<=count; i++){
		total= t*i;
		System.out.println(t+"x"+i+"="+total);
	}
	

	}

}
