#!/usr/bin/perl
use Tk;
use Tk::DialogBox;

my $mw = MainWindow->new;

my $dialog = $mw->DialogBox(
    -buttons => [qw/Ok Cancel/],
    -title   => "Enter New Value"
);

my $dialogE = $dialog->add("Entry");
$dialogE->pack(qw/-padx 10 -pady 10/);

my $button = $mw->Button(
    -text    => "Get new value...",
    -command => [ \&getNewValue, $dialog, $entry ]
)->pack(qw/-side left -padx 10/);

MainLoop;

sub getNewValue {
    my ( $db, $entry ) = @_;
    my $dbEntry = $db->Subwidget('entry');

## Clear the Entry before showing the dialog
    $dbEntry->delete( 0, 'end' );

## Determine whether or not the user hit "Ok"
    my $button = $db->Show();
    if ( $button eq "Ok" ) {
        my $letter = $dbEntry->get();
        print "$letter was submitted\n";

    }
}
__END__