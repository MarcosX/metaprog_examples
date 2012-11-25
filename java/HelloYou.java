public class HelloYou {
  private String name;

  public HelloYou(String name){
    this.name = name;
  }

  private String sayHello() {
    return "Hello " + name + "!";
  }
}
