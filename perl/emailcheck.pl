#!/usr/bin/perl -w
print "Please enter your email address: ";
$_=<STDIN>;
chomp;
# if (/.com/) {#
if (m/[a-z0-9!#$%&'*+\=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/) {
	print "$_ is a valid email address!\n";
} else {
	print "$_ is not a valid email address!\n";
}


