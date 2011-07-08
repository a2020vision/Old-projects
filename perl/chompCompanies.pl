#!/usr/bin/perl -w
use File::Copy;
my $counter = 0;
my $execChrome = 'google-chrome --url http://google.com/search?q=';
my $feelingLucky = '\&btnI=745';
my $numPages = 5;
my $input;
my $companyList = "companyList";

print "Welcome to Perl career page finder v0.2\n\(c\) 2011 Nick Leep\n\n";
print "this version chops off each comapny name from the file as you use it, so exercise caution.\n";

print 'Enter the company list file that you wish to use [./companyList]: ';
chomp($input = <STDIN>);
if ($input) {
	$companyList = $input;
}
open COMPL, $companyList;


print 'Would you like to make a backup ([y]/n):';
chomp($input = <STDIN>);
$input =~ tr/A-Z/a-z/;
if ($input eq 'n') {
	print "not creating a backup!\n";
} else {
	my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
	$year += 1900;
	my $backupFilename = $companyList . '-Backup' . $mday . $mon . $year . $hour . $min . $sec;
	print "$backupFilename\n";
	copy("$companyList","$backupFilename") or die "Copy failed $!";
	print "Backup company list saved as $backupFilename\n";
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
$length = $#companyList;
# foreach (@companyList) {
# 	$line = $_ . "+careers";
# 	$line =~ s/\ /+/g;
# 	print "opening in Chrome: " . $execChrome . $line . $feelingLucky . "\n";
# 	system $execChrome . $line . $feelingLucky;
# 	$counter +=1;
# 	if ($counter >= $numPages) {
# 		print "Press enter to continue or control-c to quit...";
# 		my $storage = <STDIN>;
# 		$counter = 0;
# 	}
# 	
# }
for (my $i = 0; $i < $length; $i++) {
	# do stuff
	# open windows
	# and overwrite the file
}
