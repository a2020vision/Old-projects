#!/usr/bin/perl

# read all lines into an array, then print in reverse order
print "Type your text, and then Crtl-D to finish\n";
@lines = <STDIN>;
print reverse(@lines);