#!/usr/bin/perl -w
use Inline Octave => DATA;
print "Octave script, Perl section";
# helloOctave();
## Inline::Octave::helloOctave();
__DATA__
__Octave__
function helloOctave
   disp('Hello, world!')
endfunction