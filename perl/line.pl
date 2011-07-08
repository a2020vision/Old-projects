#!/usr/bin/perl

use B::C
my %array;
my $i;
my @x;
my @y;

for($i=0; $i<10; $i++) {
	$array{"$i"} = (5*$i-2);
}
$i=0;
@x=sort(keys(%array));
foreach $i (@x) {
	$y[$i]=$array{$x[$i]};
}
print "x \t y\n";
foreach $j (@x) {
	print "$x[$j] \t";
	print "$y[$j] \n";
}
