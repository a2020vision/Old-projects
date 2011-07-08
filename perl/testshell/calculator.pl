#!/usr/bin/perl -w
my $string;
my $choice;
print "Be careful not to screw anything up.\n";
print "Enter \"Q\" to quit!\n";
while(1) {
	print "_>";
	$string=<STDIN>;
	chomp($string);
	if($string eq ("q"|"Q")) { # user chose to quit
		print "Goodbye!\n";
		last
	}
	# print "$string = ";
	print eval($string);
	print "\n";
}