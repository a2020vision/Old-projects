#!/usr/bin/perl -w
@input = <STDIN>;
chomp(@input);
foreach (@input) {
	$totals{$_} += 1;
}
foreach $key (sort keys %totals) {
	$value = $totals{$key};
	print "$key found $value times.\n";
}
