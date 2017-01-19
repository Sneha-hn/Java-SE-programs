package Program_Default;

public class Clerk {
			int roll=101; // roll is an integer
			String grade="Manager"; // grade is manager
	
		void display() {
				
				System.out.println(roll+" "+grade); // o/p should be roll grade
				
				}

	public static void main(String[] args) {
		Clerk c1=new Clerk();// it can hav n number of roll n strings..
		Clerk c2=new Clerk();
		  c1.display();
		  c2.display();
		

	}

}
