#!/usr/bin/perl
#
#

$filepath = shift;


if ( ! -e $filepath ){
	print "Give me a file path\n";
	exit;
}

print "open file: $filepath\n";

open( OO, "< $filepath" );
while( my $f = <OO> ){
	print $f;
}

#while( <OO> ){
	#print ;
#}


print OO, "YA";

close OO;
