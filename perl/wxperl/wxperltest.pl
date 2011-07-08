#!/usr/bin/perl -w
use Wx;
package MyFrame;

use base 'Wx::App';

sub OnInit {
	my $frame = Wx::Frame->new( undef, -1, 'Hello world', [-1, -1], [250, 150],);
	$frame->Show( 1 );
}
package second;
$word = "secondPackage\n";
print "in second package\n";

package main;
print "Hello, world!\n";
print $second::word;
my $app = MyFrame->new;
$app->MainLoop;

print "You just closed the window. Let's open another.\n";
$app = MyFrame->new;
$app->MainLoop;


