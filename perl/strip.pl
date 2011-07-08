#!/usr/bin/perl -w
open FILE, "ipro1";
my @compl = <FILE>;
close FILE;
my $i = 0;
my @list = ();
foreach (@compl) {
	$line=$_;
	$line =~ s/\n/ /g;
	$list[$i] = $line;
	$i++;
}

open FILE2, ">ipro2";
print FILE2 @list;
close FILE2;

