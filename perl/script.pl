#!/usr/bin/perl -w

my $counter = 0;
my $execChrome = 'google-chrome --url http://google.com/search?q=';
my $feelingLucky = '\&btnI=745';
my $numPages = 5;
my $input;
my $companyList = "companyList";

print "Welcome to Perl career page finder v0.1\n\(c\) 2011 Nick Leep\n\n";

print 'Enter the company list file that you wish to use [./companyList]: ';
chomp($input = <STDIN>);
if ($input) {
	$companyList = $input;
}
print 'Enter the number of pages to open each time [5]: ';
chomp($input = <STDIN>);
if ($input) {
	$numPages = $input;
}
print 'Do you want to use "I\'m feeling lucky" to go straight to the career pages? (y/n) [y]: ';
chomp($input = <STDIN>);
if ($input eq 'n') {
	$feelingLucky = '';
}


open COMPL, $companyList;
chomp(my @companyList = <COMPL>);
close COMPL;
foreach (@companyList) {
	$line = $_ . "+careers";
	$line =~ s/\ /+/g;
	print "opening in Chrome: " . $execChrome . $line . $feelingLucky . "\n";
	system $execChrome . $line . $feelingLucky;
	$counter +=1;
	if ($counter >= $numPages) {
		print "Press enter to continue or control-c to quit...";
		my $storage = <STDIN>;
		$counter = 0;
	}
	
}
