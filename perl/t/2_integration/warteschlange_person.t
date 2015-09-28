use strict;
use warnings;

use Person;
use Warteschlange;

use Test::More tests => 2;

# 1
my $person = Person->new();
$person->vorname('Hans');
$person->nachname('Muster');
$person->alter(41);
my $schlange = Warteschlange->new();
$schlange->add($person);
my $dieselbe = $schlange->remove();
is($dieselbe->vorname(), 'Hans', 'Vorname 1 Person');

# 2
my $person1 = Person->new();
$person1->vorname('Hans');
$person1->nachname('Muster');
$person1->alter(41);
my $person2 = Person->new();
$person2->vorname('Anna');
$person2->nachname('Beinhart');
$person2->alter(14);
my $schlange = Warteschlange->new();
$schlange->add($person1);
$schlange->add($person2);
my $dieselbe1 = $schlange->remove();
is($dieselbe->vorname(), 'Hans', 'Vorname 2 Personen');

