#!/usr/bin/perl
#

print "Try while ?";
$line = <STDIN>;

chomp( $line );

print "Your Keyin is : $line", "\n";

if ( $line eq 'n' ){
	exit;
}

print "Input \"Exit\" for quit application:";

while( <STDIN> ){
	
	print "Your Keyin is : $_";

	if ( $_ =~ /exit/i ){
		exit;
	}
}

