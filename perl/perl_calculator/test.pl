#!/usr/bin/perl
require 'isnumeric.pl';
unless(is_numeric('aabsdf') eq undef) {
	print "yes\n";
}
else {
	print "no\n";
}