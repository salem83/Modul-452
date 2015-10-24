use strict;
use warnings;

use Warteschlange;

use Test::More tests => 5;

# Test to add one item and get it back
my $fifo = Warteschlange->new();
$fifo->add('A');
my $a = $fifo->remove();
is($a, 'A', 'one item');

# Test to add three items and get one back
$fifo = Warteschlange->new();
$fifo->add('A');
$fifo->add('B');
$fifo->add('C');
$a = $fifo->remove();
is($a, 'A', 'three items');

# Test to count elements
$fifo = Warteschlange->new();
$a = $fifo->length();
is($a, '0', 'length 0');

# Test to count elements
$fifo = Warteschlange->new();
$fifo->add('A');
$fifo->add('B');
$fifo->add('C');
$a = $fifo->length();
is($a, '3', 'length 3');

# Add a Mock
{
    package PersonMock;
    sub new   { my $class = shift; bless {}, $class }
    sub vorname {
        my $self = shift;
        my $name = shift;
        $self->{vorname} = $name if($name);
        return $self->{vorname};
    }
}

# Test to add one item and get it back
$fifo = Warteschlange->new();
my $person_mock = PersonMock->new();
$person_mock->vorname('abc');
$fifo->add($person_mock);
my $p = $fifo->remove();

is($p->vorname(), 'abc', 'set-get mock');
