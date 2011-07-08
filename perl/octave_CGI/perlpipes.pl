#!/usr/bin/perl -w
open OCTAVEPIPE, "| octave --silent";

print OCTAVEPIPE 'newfunction(\'Hi everyone\')';
close OCTAVEPIPE;
print "done!";
