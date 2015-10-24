package Warteschlange;

public class Person {

    private String vorname = "";
    private String nachname = "";
    private int alter = 0;
        
    public Person(String vorname, String nachname, int alter) {
        this.vorname = vorname;
        this.nachname = nachname;
        this.alter = alter;
    }

    public Boolean set_vorname(String vorname) {
        this.vorname = vorname;
        return true;
    }

    public String get_vorname() {
        return this.vorname;
    }
}
