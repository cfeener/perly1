#!/usr/bin/perl
use strict;
use warnings;

#my $file = $ARGV[2];

print "Enter time: ";
my $time = <STDIN>;
chomp $time; #Gets rid of \n.
exit 0 if ($time eq ""); #If empty, exit.

if(not defined $time){
  die "Need time.\n";
}
elsif($time=~ /(^[0-1][0-9]:[0-5][0-9]$)|(^2[0-3]:[0-5][0-9]$)/){
  print "Correct! Good times!\n";
}
else{
  print "Incorrect format. Try again later\n";
  exit 1;
}

print "Enter date: ";
my $date = <STDIN>;
chomp $date;
exit 2 if ($date eq "");

if(not defined $date){
  die "Need date.\n"
}
elsif($date=~ / (0[13578]|1[02])[\/.](0[1-9]|[12][0-9]|3[01])[\/.](19|20)[0-9]{2} /){	#Wrong form. See following: http://stackoverflow.com/questions/8647893/regular-expression-leap-years-and-more
  print "Correct! Happy days!\n";	#31 day months
}
elsif($date=~ //){
  print "correct!\n";	#30 day months
}
elsif($date=~ //){
  print "Correct!\n";	#February
}
