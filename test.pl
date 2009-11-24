#!/usr/bin/perl

use strict;
use warnings;

use FileHandle;

require "./ufyu";

my $fh = new FileHandle;

if ($fh->open("test.txt")) {
  print &ufyu::markup_blocklevel(join("", <$fh>));
  $fh->close;
}
