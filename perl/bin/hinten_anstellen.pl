use Mojolicious::Lite;
use Warteschlange;
use Person;

# setup mojo password
app->secrets(['blablabla']);

my $schlange = Warteschlange->new();

# start page with menu links
get '/' => {template => 'root'};

get '/anstellen' => sub {
    my $self = shift;

    $self->stash( errmsg  => '');

    my $vname = $self->param('vorname');
    my $nname = $self->param('nachname');
    my $geb   = $self->param('geb');

    if($vname and $nname and $geb) {
        $self->app->log->debug("Steht an: '$vname, $nname, $geb'");

        my $person = Person->new();

        my $fail = '';
        $fail .= 'Vorname falsch. '  unless ($person->vorname($vname));
        $fail .= 'Nachname falsch. ' unless ($person->nachname($nname));
        $fail .= 'Geb.dat. falsch. ' unless ($person->geburtsdatum($geb));

        if ($fail) {
            $self->stash( errmsg  => $fail)
        }
        else { 
            $schlange->add($person)
        }
    }

} => 'anstellen';

get '/aufrufen' => sub {
    my $self = shift;

    $self->stash(
        vorname  => '',
        nachname => '',
        geb      => '',
        laenge   => $schlange->length(),
    );

    if ( $self->param('aufruf') ){
        my $person = $schlange->remove();

        if ($person) {
            $self->stash(
                vorname  => $person->vorname(),
                nachname => $person->nachname(),
                geb      => $person->geburtsdatum(),
                laenge   => $schlange->length(),
            );
        }
    }

} => 'aufrufen';

app->start;

__DATA__

@@ root.html.ep
<!DOCTYPE html>
<html lang="de"><head><meta charset="utf-8"><title>Hintenanstellen</title></head>
<body>
<h1>Hinten Anstellen</h1>
<ul>
<li><a href="/anstellen">Anstellen</a></li>
<li><a href="/aufrufen">Aufrufen</a></li>
</body>
</html>

@@ anstellen.html.ep
<!DOCTYPE html>
<html lang="de"><head>
 <meta charset="utf-8">
 <title>Anstellen</title>
 <style> table, td, th { border: 0px solid black; } </style>
</head>
<body>
<h1>Anstellen</h1>
<form action="/anstellen">
<table>
<tr><td>Vorname:</td><td><input type="text" name="vorname" value=""></td></tr>
<tr><td>Nachname:</td><td><input type="text" name="nachname" value=""></td></tr>
<tr><td>Geburtsdatum:</td><td><input type="text" name="geb" value=""></td></tr>
</table>
<input type="submit" value="Absenden">
</form> 
<p>
<%= $errmsg %>
</p>
</body>
</html>


@@ aufrufen.html.ep
<!DOCTYPE html>
<html lang="de"><head>
 <meta charset="utf-8">
 <title>Aufrufen</title>
 <style> table, td, th { border: 0px solid black; } </style>
</head>
<body>
<h1>Aufrufen</h1>
<form action="/aufrufen">
<input type="submit" name="aufruf"  value="Person aufrufen">
</form> 
<h2>Nächste Person</h2>
<table>
<tr><td>Vorname:</td><td><%= $vorname %></td></tr>
<tr><td>Nachname:</td><td><%= $nachname %></td></tr>
<tr><td>Geburtsdatum:</td><td><%= $geb %></td></tr>
</table>
Anzahl Personen in der Schlange: <%= $laenge %>
</body>
</html>
