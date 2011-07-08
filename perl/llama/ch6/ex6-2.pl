#!/usr/bin/perl -w
#       ex6-2.pl
#       
#       Copyright 2011 Nicholas Leep <nleep@NickLeep-PC>
#       

print "Please enter the column width: ";
chomp(my $width = <STDIN>);

print "Please enter a list of strings on separate lines:\n";
chomp(my @lines = <STDIN>);
print "1234567890" x (($width +9)/10) . "12345\n";
my $format = "%${width}s\n" x @lines;
printf $format, @lines;
