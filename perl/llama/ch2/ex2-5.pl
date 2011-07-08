#!/usr/bin/perl
print "Enter a string: ";
$inputString = <STDIN>;
print "Enter the number of times to print it: ";
chomp($inputNumber = <STDIN>);
print $inputString x $inputNumber;