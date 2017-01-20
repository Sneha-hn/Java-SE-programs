package paramD;
public class paramD {

		public paramD (int a, int b, int c){
	 System.out.println("Parameterized Constructor");
	 System.out.println(" having three integer parameters");
 }
		public paramD (char a, char b){
			System.out.println("Parameterized Constructor");
			 System.out.println(" having Two character parameters");
		}
		// Create the constructors before the main function
		 public static void main(String args[]){
			  paramD d = new paramD(12, 25, 15); // creating object for first constructor
			  paramD e = new paramD('s', 'r');
	}
	
}