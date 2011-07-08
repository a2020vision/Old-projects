#!/usr/bin/perl

@names = qw/ fred betty barney dino wilma pebbles bamm-bamm/;
print "enter your numbers: ";
chomp(@numbers = <STDIN>);
foreach $i (@numbers) {
	print "$i: $names[$i-1]\n";
}