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
        $self->{nachname} = $name;
    }
    else {
        return $self->{nachname};
    }
    return 1;
}

# Mit Argument:  Wert setzen
# Ohne Argument: Wert auslesen
sub alter {
    my $self = shift;
    my $name = shift;

    if ($name) {
        $self->{alter} = $name;
    }
    else {
        return $self->{alter};
    }
    return 1;
}

1;
