#!/usr/bin/perl
use strict;
use warnings;

use Path::Tiny;
use List::Util "sum", "max";

# Read input
my $dir     = path("priv/day1");
my $file    = $dir->child("input.txt");
my $content = $file->slurp_utf8();

# Part 1
my $part_1 = max map {
    sum map { int($_) } split( "\n", $_ )
} split( "\n\n", $content );
print("$part_1\n");

# Part 2
my @part_2 = sum(
    (
        sort { $b <=> $a } map {
            sum map { int($_) } split( "\n", $_ )
        } split( "\n\n", $content )
    )[ 0 .. 2 ]
);
print("@part_2\n");
