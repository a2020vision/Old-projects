#!/usr/bin/perl -w


# go to home:
chdir;
# open the file:

open(FILE, "installed-software");
my $newOutput;
while(<FILE>) {
	$line = $_;
	$line =~ s/install\n/\n/g;
	chomp $line; # this gets rid of the \n at the end;
	$line =~ s/\t//g;
	$newOutput = $newOutput . " $line";
}
close(FILE);

# open output file
open(OUT, ">to-install.txt");
print OUT "$newOutput";
