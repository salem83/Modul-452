package component;

import static org.junit.Assert.*;
 
import org.junit.Test;
 
import warteschlange.Person;
 
public class PersonTest {
 
    @Test
    public void setgetVorname() {
        Person tester = new Person("", "", 0);
 
        tester.setVorname("Olaf");
 
        // assert statements
        assertEquals("setgetVorname", "Olaf", tester.getVorname());
 
    }
 
}
