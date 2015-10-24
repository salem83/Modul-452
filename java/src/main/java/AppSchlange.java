import Warteschlange.Person;

public class AppSchlange {
    public static void main(String[] args){
        Person p = new Person("","",0);
        p.set_vorname("Gert");
        String vorname = p.get_vorname();
        System.out.println("Vorname: " + vorname);
    }
}
