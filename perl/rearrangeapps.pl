#!/usr/bin/perl
open FILE, "installed-software";
chomp(my @apps = <FILE>);
close FILE;
foreach (@apps) {
	s/\tinstall/\ /;
		s/\t//g;

}
# print @apps;

open OUTFILE, '>>/home/nleep/Dropbox/installed-software-list';
print OUTFILE @apps;
close OUTFILE;
