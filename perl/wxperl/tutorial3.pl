#!/usr/bin/perl -w

# from http://wxperl.sourceforge.net/tutorial/tutorial3.html
use Wx;

package MyFrame;
use base 'Wx::Frame';
sub new {
	my $ref=shift;
	# the constructor: 
	my $self = $ref->SUPER::new( undef, -1, 'WXperl rules', [-1, -1], [150, 150], );

	# place controls inside a panel:
	my $panel = Wx::Panel->new( $self, -1);
	my $button = Wx::Button->new( $panel, -1, 'Button1', [30, 20], [-1, -1],);
	return $self;
}

package MyApp;
use base 'Wx::App';

sub OnInit {
	print "OnInit\n";
	my $frame = MyFrame->new;
	$frame->Show( 1 );
}

package main; { 
print "Main package\n";
my $app = MyApp->new;
$app->MainLoop;
}

