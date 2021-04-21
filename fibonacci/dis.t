#!/usr/bin/perl

$asm = `objdump -d -Mintel @ARGV[0]`;

if (@ARGV >= 2) {
  foreach $arg (@ARGV[1..@ARGV-1]) {
    if ("$asm\n" =~ /(\w+) \<$arg(?:@.*)?\>:((.|\n)*?)\n\n/g) {
      $addr = $1;
      $line = $2;
      $line  =~ s/^\s+(\w+):\s*(?:\w\w )+[\t ]*(.*?)$/\t@{[sprintf("%x", hex($1)-hex($addr))]}:\t$2/gm;
      $line =~ s/\w+\s*\<$arg\+0x(\w+)\>/$1/g;
      $line =~ s/\w+\s*\<$arg\>/$arg/g;
      print "$arg:\n$line\n";
    } else {
      print "No match for <$arg>\n";
    }
  }
} else {
  print "$asm\n";
}
