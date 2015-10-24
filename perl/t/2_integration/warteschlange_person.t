use strict;
use warnings;

use Person;
use Warteschlange;

use Test::More tests => 4;

# add and remove one guy
my $person = Person->new();
$person->vorname('Hans');
$person->nachname('Muster');
$person->geburtsdatum('1.1.2000');

my $schlange = Warteschlange->new();
$schlange->add($person);

my $dieselbe = $schlange->remove();
is($dieselbe->vorname(), 'Hans', 'Vorname 1 Person');

# add two, count and remove both
my $person1 = Person->new();
$person1->vorname('Gert');
$person1->nachname('Muster');
$person1->geburtsdatum('1.1.2000');

my $person2 = Person->new();
$person2->vorname('Anna');
$person2->nachname('Beinhart');
$person2->geburtsdatum('1.1.2000');

$schlange = Warteschlange->new();
$schlange->add($person1);
$schlange->add($person2);

is($schlange->length(), 2, 'Anz. Personen');

$dieselbe = $schlange->remove();
is($dieselbe->vorname(), 'Gert', 'Vorname 2 Personen 1');

$dieselbe = $schlange->remove();
is($dieselbe->vorname(), 'Anna', 'Vorname 2 Personen 2');
