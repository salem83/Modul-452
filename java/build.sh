#!/bin/sh

# Kompiliere Person
javac -cp src/main/java src/main/java/Warteschlange/Person.java

# Kompiliere Main App
javac -cp src/main/java src/main/java/AppSchlange.java

# Kompiliere Unit-Test
javac -cp /usr/share/java/junit4.jar:.:/home/bo/repos/Modul-451/java/src/main/java src/test/java/Component/PersonTest.java
