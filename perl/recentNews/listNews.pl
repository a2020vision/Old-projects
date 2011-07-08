#!/usr/local/bin/perl

# script to list the news from a file news.db

# (c) 2010 Nick Leep nleep3@nickleep3.com

# for right now, it simply prints things to the screen: the plan is to use this as a CGI script, printing out something as HTML, probably using ssi's.

# structure of an entry: date (\t) title (\t) text \n;

# define variables:
my @entryList; # a list in which to store the data;

my $numEntries; # to store the number of entries

my $newsFile = "news.db"; # the name of the file

my $numEntriesToPrint = 10; # set the number of entries to print.

my $i; # itereator, may be needed

#open the file and store the data:

open(NEWSFILE, $newsFile) or die "News file $newsFile does not exist!\n";
@entryList = <NEWSFILE>;

# print the data: 
$numEntries = scalar @entryList;
# print "Number of entries: $numEntries\n";
@entryList = reverse(sort(@entryList)); # to put it in opposite-numerical order;
# @entryList=reverse(@entryList); # this assumes that that new entries are always appended to the bottom of the file, which is fair.

# next, determine how to print it
if($numEntries < $numEntriesToPrint) {
	print @entryList;
} else {
	for($i=0; $i<$numEntriesToPrint; $i++) {
		print $entryList[$i];
	}
}
print "Goodbye!\n";