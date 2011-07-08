sub getnum {
    use POSIX;
    my $str = shift;
    $str =~ s/^\s+//;
    $str =~ s/\s+$//; # these two lones, apparently, do that thing where they change it to nothing if it's a number, and something if it's not 
    $! = 0;
    my($num, $unparsed) = strtod($str);
    if (($str eq '') && ($unparsed != 0) && $!) {
        return undef;
    } else {
        return $num;
    }
}
 
sub is_numeric { defined getnum($_[0]) }
1;