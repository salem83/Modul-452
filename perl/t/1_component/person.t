use strict;
use warnings;

use Person;

use Test::More tests => 3;

my $person = Person->new();
$person->vorname('Boris');
my $vorname = $person->vorname();
is($vorname, 'Boris', 'setter/getter Vorname');

$person = Person->new();
$person->alter(1);
my $alter = $person->alter();
is($alter, 1, 'setter/getter Alter');

$person = Person->new();
$person->vorname('Olafdergrossemitdemlangenschwert');
$vorname = $person->vorname();
isnt($vorname, 'Olafdergrossemitdemlangenschwert', 'to long Vorname');
