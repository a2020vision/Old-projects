#!/usr/bin/perl -w

# simple four-function RP calculator

# start by defining variables:
my $number1; # is... you know who!
my $number2; # not a polite topic for conversation
my $operation; # I knocked was out for most of it, but the doctor saved the part in a jar, wanna see it?

my $wholeBigString; # where I store the entire thing put together, i.e. "5+3" or something

my $choice; # isn't it always?

my $answer; # is mine; yours may be different.

my $firstTime=1; # so be gentle!
# seriously though, this is only to test, for the exit-question thing, we don't want to ask the first time if they want to quit already

while(1) { # control loop
	# get the first number:
	unless($firstTime) {
		print q|enter "Q" to quit, or press "enter" to go again: |;
		$choice = <STDIN>;
		chomp($choice);
		$choice =~ tr/A-Z/a-z/;
		if($choice eq "q") { # user chose to quit
			print "Goodbye!\n";
			last
		}
	}
	if($firstTime) {
		$firstTime=0; # because if we've gotten through the first part, we've... gone through the first time
	}
	print "Enter first number: ";
	$number1 = <STDIN>;
	chomp $number1;
	unless(isnumber($number1)) { # checks to see if $number1 is numeric; if it isn't, execute this code:
		print "Not a number!\n";
		next;
	}
	# get the second operation
	print "Enter second number: ";
	$number2 = <STDIN>;
	chomp $number2;
	unless(isnumber($number2)) {
		print "Not a number!\n";
		next;
	}
	# get operation:
	print "Enter operation (+, -, *, or / please): ";
	$operation=<STDIN>;
	chomp($operation);
	unless(isoperation($operation)) { # check to see if it's an operation, otherwise give an error
		print "Not a valid operation!\n";
		next;
	}
	# Final thing: check for divide=by=zero:
	if(($operation eq "/") and ($number2 eq "0")) {
		print "Attempt to divide by zero! Don\'t do that, man!\n";
		next;
	}
	$wholeBigString = "$number1 $operation $number2";
	$answer=eval($wholeBigString);
	print "$wholeBigString = $answer\n";

}

sub isoperation { # subroutine to check if something is an operation
	my $oper = shift;
	my @operList = ("+","-","*","/");
	unless(grep($oper, @operList)) { # if the test is "true" then the operation entered is an operation; if it isn't... it isn't, and this e
		return 0;
	}
	else {
		return 1;
	}
	
}

sub isnumber { # subroutine to check if something is a C float
	# accepts a single string as input, returns true (1) or false (0) based on test:
	my $num = shift;
	if($num =~ /^([+-]?)(?=\d|\.\d)\d*(\.\d*)?([Ee]([+-]?\d+))?$/) { # true if it IS a C float
		return 1;
	}
	else { # it isn't a C float.
		return 0;
	}
}