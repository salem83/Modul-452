use strict;
use warnings;

use Person;

use Test::More tests => 3;

my $person = Person->new();
$person->vorname('Boris');
my $vorname = $person->vorname();
is($vorname, 'Boris', 'setter/getter Vorname');

$person = Person->new();
$person->geburtsdatum('4.3.1990');
my $geburtsdatum = $person->geburtsdatum();
is($geburtsdatum, '4.3.1990', 'setter/getter Alter');

$person = Person->new();
$person->vorname('Olafdergrossemitdemlangenschwert');
$vorname = $person->vorname();
isnt($vorname, 'Olafdergrossemitdemlangenschwert', 'to long Vorname');
