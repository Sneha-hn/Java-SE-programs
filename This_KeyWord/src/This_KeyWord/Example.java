package This_KeyWord;
class Example
{
 int id;
 String name;
 
 Example(int id,String name)
 {
  this. id = id;
  this.name = name;
 }
void show()
  {
   System.out.println(id+" "+name);
  }
public static void main(String args[])
 {
   Example e1 = new Example(1006,"Karlos");
   Example e2 = new  Example(1008,"Ray");
  e1.show();
  e2.show();
 }
}