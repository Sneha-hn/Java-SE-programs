package p1;

import p2.p3.p4.Second;//import the file from previous package

public class First {
public void f1() {
	System.out.println("f1 function");
	Second s=new Second();// Second is the class name from p2.p3.p4 and s is the name given to it and tht is assigned to new Second()
	s.f2();
}
}
