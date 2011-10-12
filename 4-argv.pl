#!/usr/bin/perl
#

print "I have 0 ~ $#ARGV ARGV\n";

if ( $#ARGV < 0 ){
	print( "Please give me some argv, exit!!", "\n" );
}

#$OO = shift;
#$KK = shift;

for( $i = 0 ; $i <= $#ARGV ; $i++ ){
	print "\$ARGV[$i]: $ARGV[$i]\n";
}

#print "The first argv is : $OO\n";
#print "The first argv is : $KK\n";
