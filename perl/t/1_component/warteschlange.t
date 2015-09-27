use strict;
use warnings;

use Warteschlange;

use Test::More tests => 2;

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
my $a = $fifo->remove();
is($a, 'A', 'three items');

