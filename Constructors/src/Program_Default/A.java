package Program_Default;

class Student {
private int id;
private String name;
private float marks;

public int getId() { 
	return id;
}
public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public float getMarks() {
	return marks;
}
public void setMarks(float marks) {
	this.marks = marks;
}
}
 
public class A
{
public static void main (String [] args){
	Student s1= new Student();
	s1.setId(001);
	s1.setName("raju");
	s1.setMarks( 45.5f);
	System.out.println("The student details are ");
	System.out.println("Id is "+s1.getId());
	System.out.println("Name is "+s1.getName());
	System.out.println("Marks is "+s1.getMarks());
}
}
