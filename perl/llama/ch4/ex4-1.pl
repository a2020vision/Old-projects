#!/usr/bin/perl -w

# subroutine that returns the sum of the numbers in the input
sub total {
	my $total = 0;
	foreach (@_) {
		$total += $_;
	}
	return $total;
}
