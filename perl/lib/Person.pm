package Person;

# Konstruktor
sub new {
    my $class = shift;
    my $self  = {
                    vorname  => '',
                    nachname => '',
                    alter    => '',
    };
    bless ($self, $class);
}

# Mit Argument:  Wert setzen
# Ohne Argument: Wert auslesen
sub vorname {
    my $self = shift;
    my $name = shift;

    if ($name) {
        #              1-15 Buchstaben, ohne Zahlen
        if ($name =~ /^[[:alpha:]]{1,15}$/) {
            $self->{vorname} = $name;
            return 1;
        }
        else {
            return 0;
        }
    }
    else {
        return $self->{vorname};
    }
}


# Mit Argument:  Wert setzen
# Ohne Argument: Wert auslesen
sub nachname {
    my $self = shift;
    my $name = shift;

    if ($name) {
        #              1-15 Buchstaben, ohne Zahlen
        if ($name =~ /^[[:alpha:]]{1,15}$/) {
            $self->{nachname} = $name;
            return 1;
        }
        else {
            return 0;
        }
    }
    else {
        return $self->{nachname};
    }
    return 1;
}

# Mit Argument:  Wert setzen
# Ohne Argument: Wert auslesen
sub geburtsdatum {
    my $self = shift;
    my $geb = shift;

    if ($geb) {
        if ($geb =~ /^\d{1,2}\.\d{1,2}\.\d{2,4}$/) {
            $self->{geb} = $geb;
        }
        else {
            return 0;
        }
    }
    else {
        return $self->{geb};
    }
    return 1;
}

1;
