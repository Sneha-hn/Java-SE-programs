package paramC;

public class paramC {
	 class paramC {
	 paramC(int a, int b){
	  System.out.print("Parameterized Constructor");
	  System.out.println(" having Two parameters");
	 }
	  paramC(int a, int b, int c){
	  System.out.print("Parameterized Constructor");
	  System.out.println(" having Three parameters");
	 }
	  public static void main(String args[]){
	  paramC pc1 = new paramC(12, 12);
	  paramC pc2 = new paramC(1, 2, 13);
	 }
	}