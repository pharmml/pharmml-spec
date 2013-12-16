#!/usr/bin/perl -w

use strict;

while(<STDIN>){
  s/^\\documentclass{article}/\\documentclass[a4paper]{article}/;
  s/^\\makeindex/%\\makeindex/;
  if(s/^\\makeglossary/%\\makeglossary/){
    print "\\pagestyle{empty}\n";
  }
  s/^\\frontmatter/%\\frontmatter/;
  s/^\\maketitle/%\\maketitle/;
  s/^\\tableofcontents/%\\tableofcontents/;
  print $_;
}
