use strict;
use warnings;

use Test::More tests => 10;

use WWW::Mechanize;
my $mech = WWW::Mechanize->new();
 
# land on page
my $response = $mech->get( 'http://127.0.0.1:3000/' );

if ($response->is_success) {
    pass ('landing page');
}
else {
    BAIL_OUT('landing page down!');
}

# bail out if there is already data in the system!
my $mechtmp = WWW::Mechanize->new();
unless ($mechtmp->get( 'http://127.0.0.1:3000/aufrufen' )->content
        =~  /Anzahl Personen in der Schlange: 0/) {
    BAIL_OUT('System restart needed!');
}

# check links
ok ($mech->find_link( text => 'Anstellen' ), 'Link 1');
ok ($mech->find_link( text => 'Aufrufen' ), 'Link 2');

# go to first page
ok ($mech->follow_link( text => 'Anstellen', n => 1 ), 'follow link 1');

# Hans queues in
$mech->submit_form (
    form_number => 1,
    fields      => {
                        vorname  => 'Hans',
                        nachname => 'Muster',
                        geb      => '1.2.1999',
    }
);
ok ($mech->success(), 'anstellen 1');

# Gerta queues in
$mech->submit_form (
    form_number => 1,
    fields      => {
                        vorname  => 'Gerta',
                        nachname => 'Knueppel',
                        geb      => '1.2.1999',
    }
);
ok ($mech->success(), 'anstellen 2');

$mech->get( 'http://127.0.0.1:3000/' );
# go to second page
ok ($mech->follow_link( text => 'Aufrufen', n => 1 ), 'follow link 2');

# next please!
ok ($mech->click_button ( value => 'Person aufrufen'),'Person aufrufen');

# Hans ist an der Reihe ;-)
like ($mech->content(), qr/Hans/, 'Reih+Ordnung');

# Gerta sollte noch anstehen
like ($mech->content(), qr/Schlange: 1$/, 'Anz. Schlange');

