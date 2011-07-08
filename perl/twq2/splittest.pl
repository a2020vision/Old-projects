#!/usr/bin/perl
my $string = "1 abcd 12.3";

my ($numitems, $name, $price) = split(/([0-9] | [0-9])/, $string);
# print join("\n", split(/([0-9] | [0-9])/, $string));
