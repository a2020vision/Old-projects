#!/usr/bin/perl -w
my $number1;
my $number2;
print "Please enter the first number: ";
chomp($number1 = <STDIN>);
print "Please enter the second number: ";
chomp($number2 = <STDIN>);
print $number1 * $number2 . "\n";