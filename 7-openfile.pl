#!/usr/bin/perl
#
#

if ( -f $ARGV[0] ){
	print "Give me a file path";
	exit;
}

open( OO, "< $ARGV[0]" );

while( my $f = <OO> ){
	print $f;
}
	

