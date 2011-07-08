#!/usr/bin/perl

# to make it all print on one line:
# chomp(@lines=<STDIN>);
# for different lines you'd just have:
@lines = <STDIN>;

@lines=sort(@lines);
print @lines;
