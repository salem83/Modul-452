import warteschlange.Person;

public class AppSchlange {
    public static void main(String[] args){
        Person p = new Person("","",0);
        p.setVorname("Gert");
        String vorname = p.getVorname();
        System.out.println("Vorname: " + vorname);
    }
}
