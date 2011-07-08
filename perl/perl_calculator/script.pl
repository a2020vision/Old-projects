#!/usr/bin/perl

# four-function, reverse-polish calculator

# use 5.006;
use strict;
use warnings;

require 'isnumeric.pl';
require 'isOperation.pl';

my $choice; # whether or not to quit

my $number1; # first number
my $number2; # second number
my $operation; # operation
my $evalString; # string to evaluate
my $answer; # store the answer;


while(1) {
	print "Enter the first number: ";
	$number1 = <STDIN>;
	chomp $number1;
	unless(defined(is_numeric($number1))) # check to see if it's numeric
	{
		print "This was not a number!\n";
		next;
	}
	print "Enter the second number: ";
	$number2 = <STDIN>;
	chomp $number2;
	unless(defined(is_numeric($number2))) #check to see if second number is numeric
	{
		print "this was not a number!\n";
		next;
	}
	
	print "Enter the operation: ";
	$operation=<STDIN>;
	chomp $operation;
	unless(isOperation($operation)) { # execute the inside code if it is NOT an operation:
		print "not a valid operation!\n";
		next;
	}
	# before doing anything else, I want to check for divde-by-zero errors:
	if(($operation eq "/" ) and ($number2 eq "0")) {
		print "Attempt to divide by zero! Exiting, try again.\n";
		next;
	}
	$evalString = "$number1 $operation $number2";
	$answer = eval($evalString);
	print "$evalString = $answer\n";

	
	print q/Enter "Q" to quit, or press enter to continue: /;
	$choice = <STDIN>;
	chomp $choice;
	$choice =~ tr/A-Z/a-z/;
	if($choice eq 'q') {
		last
	}
	else { next; }
}
die "Goodbye!\n";