package paramC;

public class paramC {
	//Constructor overloading-no.of parameters or datatype of parameters or sequence of parameters
	// this is a constructor with n munb of paramaters
	public paramC(int a, int b){  // first constructor(always declare the constructors with access specifiers) with 2 parameter
	  System.out.print("Parameterized Constructor");
	  System.out.println(" having Two parameters");
	 }
	 public paramC(int a, int b, int c){	//second constructor(always declare the constructors with access specifiers) with 3 parameter
	  System.out.print("Parameterized Constructor");
	  System.out.println(" having Three parameters");
	 }
	  public static void main(String args[]){
	  paramC pc1 = new paramC(12, 12); // creating object for first constructor
	  paramC pc2 = new paramC(1, 2, 13);	//creating object for second constructor
	 }
	}