#!/usr/bin/perl -w
my $pi = 3.141592654;
my $radius=0;
# my $radius = 12.5;
print "Please enter the radius of the circle: ";
chomp($radius = <STDIN>);
if($radius < 0) {
	print "The circumference of the circle is 0.\n";
} else {
	my $circumference = 2*$pi*$radius;
	print "The circumference of a circle with a radius of $radius is $circumference\n";
}