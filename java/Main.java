import java.util.Scanner;
import java.lang.reflect.*;

public class Main{
  public static void main(String arg[]){
    Scanner scanner = new Scanner(System.in);
    System.out.print("Quem é você? ");
    String name = scanner.nextLine();
    Method privateMethod;
    Field privateField;
    HelloYou hello = new HelloYou(name);
    try {
      privateMethod = hello.getClass().getDeclaredMethod("sayHello");
      privateMethod.setAccessible(true);
      System.out.println(privateMethod.invoke(hello));
      privateField = hello.getClass().getDeclaredField("name");
      privateField.setAccessible(true);
      privateField.set(hello, ((String)privateField.get(hello)).toUpperCase());
      System.out.println(privateMethod.invoke(hello));
    } catch(Exception e) {
      e.printStackTrace();
    }
  }
}
