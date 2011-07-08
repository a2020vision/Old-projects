#!/usr/bin/perl
my $filename = "input";

my $taxRate = 0.1;
my $importRate = 0.05;

my $taxes = 0;
my $total = 0;

my $itemPrice = 0;
my $itemTax = 0;
my $itemTaxRate = 0;
# my $isTaxable = false;
# my $isImported = false;

print "Please enter the input filename, or press Enter to use default [$filename]: ";
chomp($inputFilename = <STDIN>);
if ($inputFilename) {
	$filename = $inputFilename;
}
print "Using $filename\n";


open FILE, "<$filename" or die $!;
chomp(my @items = <FILE>);
close FILE;

foreach $item (@items) {
	if ($item =~/imported/) {
		#print "This item is imported!\n";
		# $isImported = true;
		$itemTaxRate += $importRate;
	}
	unless ($item =~/chocolate/) {
		# item is taxable
		# $isTaxable = true;
		$itemTaxRate += $taxRate;
	}
	($devnull, $numItems, $description, $itemPrice) = split(/([0-9] | [0-9])/, $item);
	$numItems =~ s/ //g;
	$description =~ s/ at//g;
	$itemPrice =~s/ //g;
	print $numItems . ";\n";
	print $description . ";\n";
	print "\$$price;\n";
}
