#!/usr/bin/env perl

use Modern::Perl;
use autodie;

open(my $in, "<", "slobwashere.txt");

while (<$in>) {
    print "Just read in this line: $_";
}

exit 0
