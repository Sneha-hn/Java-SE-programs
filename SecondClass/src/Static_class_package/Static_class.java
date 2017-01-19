package Static_class_package;

public class Static_class {
public static void f1()	// for non static function public void f1 
{
	System.out.println("This is a static function");
}
public static void main(String[] a) {
	//Static_class s1=new Static_class();
	//s1.f1();
	Static_class.f1();
}
}
