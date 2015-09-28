use strict;
use warnings;

use Data::Dumper;

use Test::More tests => 9;

use WWW::Mechanize;
my $mech = WWW::Mechanize->new();
# land on page
BAIL_OUT('landing page down!') unless($mech->get('http://127.0.0.1:3000/'));

# bail out if there is already data in the system!
BAIL_OUT('System restart needed!')
    unless ($mech->get( 'http://127.0.0.1:3000/aufrufen' )->content
        =~  /Anzahl Personen in der Schlange: 0/);

$mech->get( 'http://127.0.0.1:3000/anstellen' );

for my $i (1..500) {
    $mech->submit_form (
        form_number => 1,
        fields      => {
                            vorname  => 'Hans',
                            nachname => 'Muster',
                            alter    => $i,
        }
    );
}

$mech->get( 'http://127.0.0.1:3000/aufrufen' );

for my $i (1..500) {
    # next please!
    $mech->click_button ( value => 'Person aufrufen');
}

# Hans ist an der Reihe ;-)
like ($mech->content(), qr/500/, 'Reih+Ordnung');

