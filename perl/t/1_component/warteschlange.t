use strict;
use warnings;

use Warteschlange;

use Test::More tests => 4;

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
