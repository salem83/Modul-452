use strict;
use warnings;

use Data::Dumper;

use Test::More tests => 1;

use WWW::Mechanize;
my $mech = WWW::Mechanize->new();
# land on page
BAIL_OUT('landing page down!') unless($mech->get('http://127.0.0.1:3000/'));

# bail out if there is already data in the system!
BAIL_OUT('System restart needed!')
    unless ($mech->get( 'http://127.0.0.1:3000/aufrufen' )->content
        =~  /Anzahl Personen in der Schlange: 0/);

$mech->get( 'http://127.0.0.1:3000/anstellen' );

for my $i (1901..2015) {
    $mech->submit_form (
        form_number => 1,
        fields      => {
                            vorname  => 'Hans',
                            nachname => 'Muster',
                            geb      => "1.2.$i",
        }
    );
}

$mech->get( 'http://127.0.0.1:3000/aufrufen' );

# Hans ist an der Reihe ;-)
like ($mech->content(), qr/115/, 'Reih+Ordnung');

for my $i (1..2) {
    # next please!
    $mech->click_button ( value => 'Person aufrufen');
}

# hat noch Bugs
#like ($mech->content(), qr/113/, 'Reih+Ordnung2');
