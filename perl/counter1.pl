#!/usr/bin/perl -w

# counter1.pl: one way to count the characters, words, and lines in a text file

# the name of the file that will be counted:
$TheFile = "sample.txt";

# open the file - if it exists
open(INFILE, $TheFile) or die "The file $TheFile could not be found";

# Initialize counters:
$CharCount=0;
$WordCount=0;
$LineCount=0;

while(<INFILE>) {
	$TheLine = $_; # saves the line's contents
	chomp($TheLine); # removes line break
	$LineCount = $LineCount + 1;
	$LineLen = length($TheLine);
	# Now how many chars?
	$CharCount = $CharCount + $LineLen;
	
	# Number of words:
	
	# Check for empty lines:
	if($TheLine eq "") { next };
	#else
	$WordCount = WordCount+1;
	# Now loop through to find spaces, indicating words
	$CharPos = 0;
	until($CharPos == $LinLen) {
		if(substr($TheLine, $CharPos,1) eq " ")
		{$WordCount = $WordCount + 1 }
		$CharPos = $CharPos + 1;
	}
}

print "For the file $TheFile:\n";
print "Number of characters:  $CharCount\n";
print "Number of words:       $WordCount\n";
print "Number of lines:       $LineCount\n";
print "\n bye!\n"