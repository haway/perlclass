#!/usr/bin/perl
#

$Str = "This is book";
print "Your word is:$Str\n";

exit if ( ! $Str );

# $Str =~ /This/i;

if ( $Str =~ /This/i ){
	print "\t=> Your String have 'This' in it\n";
}

print "\t=> I change 'This' to 'That'\n";

$Str =~ s/This/That/;

print "Your word is: $Str\n";

# Plesae Change "Book" to "Dog", What RE you shuld do?

print "Your word is: $Str\n";

# Get key word in String
$Str =~ /(Dog)/i;
$Str2 = $1;

print "\t=> Hi, I Get your key word: $Str2\n" if ( $Str2 );

# How about get last word
$Str =~ / (\w+$)/i;
$Str3 = $1;

print "\t=> The last word in your string is: $Str3\n" if ( $Str3 );

# Please print:
# "Ok" if respone success
# "Who" and his password is?
# "What is his IP address"
$teststr = '192.168.1.1 Get /http1.1/Post 200 ?argv1=join&pwd=perlGood&rock=1';

