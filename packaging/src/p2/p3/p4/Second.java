package p2.p3.p4;// to make sub package each package is  separated by (.) operator

import p1.First;// to import the file from previous package

public class Second {
public void f2() {
	System.out.println("f2 function");
	First f=new First();// first is the class name from p1 and f is the name given to it and tht is assigned to new First()
	f.f1();// first type f1
			// then go to line 9 n derive the class first from package p1.
}
}
