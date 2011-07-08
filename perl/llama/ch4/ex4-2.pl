#!/usr/bin/perl -w

my $sum = &total((1..1000));
print "The sum of the numbers 1 to 1000 is $sum.\n";



# subroutine that returns the sum of the numbers in the input
sub total {
	my $total = 0;
	foreach (@_) {
		$total += $_;
	}
	return $total;
}
