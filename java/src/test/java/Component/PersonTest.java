package Component;

//import static org.junit.Assert.assertEquals;
//import junit.framework.TestCase;
import junit.framework.*;

//import org.junit.Test;

import Warteschlange.Person;

public class PersonTest extends TestCase {

  //@Test
  public void setget_vorname() {

    // MyClass is tested
    Person tester = new Person("", "", 0);

    tester.set_vorname("Olaf");

    // assert statements
    assertEquals("setget_vorname", "Olaf", tester.get_vorname());
  }

} 
