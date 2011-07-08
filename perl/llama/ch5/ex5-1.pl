#!/usr/bin/perl -w

%names = (
	"fred" => "flintston",
	"barney" => "rubble",
	"wilma" => "flintstone",);
print "Please enter the first name: ";
chomp(my $firstName = <STDIN>);
$lastName = $names{$firstName};
if($lastName) {
	print "$firstName\'s last name is $lastName\n";
} else {
	print "$firstName not found!\n";
}
