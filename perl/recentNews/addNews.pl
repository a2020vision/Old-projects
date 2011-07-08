#!/usr/local/bin/perl

# A simple script for adding text-based entries into a tab-delimited database

# for right now, this works through the command line. In the future, I will try to get it to work through cgi/html forms. Or GUI?

# (c) 2010 Nick Leep, nleep3@nickleep3.com

# structure of an entry: date (\t) title (\t) text \n;

# database in which to store data:
$newsFile = "news.db";

# define the variables things will be stored in
my $theTime; # date that entry is added
my $title; # entry title
my $text; # text of the entry;

my $i; # iterator

my $entry; # the full entry;

# variables for date and time:
my @months, @weekDays, @hms; # month, days of week, and hours-minutes-seconds
my $second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings;

# start with getting the title:
while(1) { # for control purposes, put this in an infinite loop; depend on next and last
	# first thing to work on: getting the title.
	print "Enter title of entry: (on one line, please)\n";
	$title = <STDIN>;
	unless($title) {
		print "You didn't enter anything!\n";
		next;
	}
	# $title =~ tr/\n/\t/; # change all newlines to tabs; easy enough, since the only \n should be at the end; we want a \t there anyway
	chomp($title); # on second thought, we'll be adding \t's to the time later anyway, and this will make it look more consistent.
	last;
}
while(1) {
	# next thing to work on: getting the content.
	print "Enter your text: (type END to exit)\n";
	while (<STDIN>) {
		last if /^END$/;
		$text .= $_;
	}
	unless($text) {
		print "You didn't enter any text!\n";
		next;
	}
	
	last;
}
# I need to do some fancy stuff to the text first, so that there aren't any confusing newlines in it.
chomp($text);
$text =~ s/\n/<br>/g;

# finally, the date and time:

# text for time/date:
@months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
@weekDays = qw(Sun Mon Tue Wed Thu Fri Sat Sun);
($second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings) = localtime();
# need to make hours, minutes, seconds into two digits if they're only one. Store them in a temporary vector:
@hms = ($hours, $minutes, $seconds);
for($i=0;$i<3;$i++) {
	if($hms[i]<10) {
		$hms[i]="0$hms[i]";
	}
}
# put them back out into scalars:
($hours, $minutes, $seconds) = @hms;

$year = 1900 + $yearOffset;
$theTime = "$hour:$minute:$second, $weekDays[$dayOfWeek] $months[$month] $dayOfMonth, $year";
print "Time to be used for this entry: $theTime\n";
# this will be used as the entry date. Later, I plan to put a query about this; but not for now.


$entry = "$theTime\t$title\t$text\n";
print "New entry will be: \n";
print $entry;

# should check if this is OK here; but not for now

open(DB, ">>$newsFile"); # opens for appending
print DB $entry;
close DB;

print "Goodbye!\n";