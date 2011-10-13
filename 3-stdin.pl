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

while( my $kk = <STDIN> ){
	
	print "Your Keyin is : $kk";
	
	chomp( $kk );

	if ( $kk eq 'exit' ){
		exit;
	}
}

