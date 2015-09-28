package Warteschlange;

# Konstruktor
sub new {
    my $class = shift;
    my $self  = {
                    schlange => [],
                };
    bless ($self, $class);
}

# zu FIFO hinzufügen
sub add {
    my $self = shift;
    my $item = shift;

    push @{$self->{schlange}}, $item;
}

# von FIFO wegnehmen
sub remove {
    my $self = shift;
    
    return shift @{$self->{schlange}};
}

# Anzahl Elemente
sub length {
    my $self = shift;

    return scalar @{$self->{schlange}};
}

1;
