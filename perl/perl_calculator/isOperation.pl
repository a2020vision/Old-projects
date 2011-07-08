# determines whether a value entered is a valid numerical operator

# so far only the four basic ones are supported.

# if we add many more operations, this would be a slo

sub isOperation {
	my $oper = shift; # get the operator
	my $i;
	my @operList = ('+', '-', '*', '/'); # a list of the supported operations
#	for($i=0; $i < length(@operList); $i++) {
#		if($operList[i] eq $oper) # 
	if(grep { $_ eq $oper} @operList ) { #is in operation list
		return 1;
	}
	else { # isn't in operation list
		return 0;
	}
}
1;
	