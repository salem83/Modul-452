package warteschlange;

public class Person {

    private String vorname = "";
    private String nachname = "";
    private int alter = 0;
        
    public Person(String vorname, String nachname, int alter) {
        this.vorname = vorname;
        this.nachname = nachname;
        this.alter = alter;
    }

    public Boolean setVorname(String vorname) {
        this.vorname = vorname;
        return true;
    }

    public String getVorname() {
        return this.vorname;
    }
}
