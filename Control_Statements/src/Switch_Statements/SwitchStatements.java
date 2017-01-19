package Switch_Statements;

public class SwitchStatements {

	public static void main(String[] args) {
		int choice=2;
		switch (choice)
		{ 
		case 1:
				System.out.println("you have selected veg biryani: price=Rs120");
				break;
		case 2:
			System.out.println("you have selected chicken biryani: price=Rs200");
			break;
		case 3:
			System.out.println("you have selected veg manchurian: price=Rs80");
			break;
		case 4:
			System.out.println("you have selected chicken manchurian: price=Rs120");
				break;
		default:
		 System.out.println("you have entered wrong choice");		
		
		}
 

	}

}
