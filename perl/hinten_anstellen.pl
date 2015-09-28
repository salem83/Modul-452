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

    my $vname = $self->param('vorname');
    my $nname = $self->param('nachname');
    my $alter = $self->param('alter');

    if($vname and $nname and $alter) {
        $self->app->log->debug("Steht an: '$vname, $nname, $alter'");

        my $person = Person->new();

        $person->vorname($vname);
        $person->nachname($nname);
        $person->alter($alter);

        $schlange->add($person)
    }

} => 'anstellen';

get '/aufrufen' => sub {
    my $self = shift;

    $self->stash(
        vorname  => '',
        nachname => '',
        alter    => '',
        laenge   => $schlange->length(),
    );

    if ( $self->param('aufruf') ){
        my $person = $schlange->remove();

        if ($person) {
            $self->stash(
                vorname  => $person->vorname(),
                nachname => $person->nachname(),
                alter    => $person->alter(),
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
<li><a href="/anstellen">Anstellen</li>
<li><a href="/aufrufen">Aufrufen</li>
</body>
</html>

@@ anstellen.html.ep
<!DOCTYPE html>
<html lang="de"><head><meta charset="utf-8"><title>Anstellen</title></head>
<body>
<h1>Anstellen</h1>
<form action="/anstellen">
<p>
 <input type="text" name="vorname" value="">
 <input type="text" name="nachname" value="">
 <input type="text" name="alter" value="">
</p>
<input type="submit" value="Absenden">
</form> 
</body>
</html>


@@ aufrufen.html.ep
<!DOCTYPE html>
<html lang="de"><head><meta charset="utf-8"><title>Aufrufen</title></head>
<body>
<h1>Aufrufen</h1>
<form action="/aufrufen">
<input type="submit" name="aufruf"  value="Person aufrufen">
</form> 
<h2>Nächste Person</h2>
<table border=0>
<tr><td>Vorname</td><td><%= $vorname %></td></tr>
<tr><td>Nachname</td><td><%= $nachname %></td></tr>
<tr><td>Alter</td><td><%= $alter %></td></tr>
</table>
Anzahl Personen in der Schlange: <%= $laenge %>
</body>
</html>
