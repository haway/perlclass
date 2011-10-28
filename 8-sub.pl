#!/usr/bin/perl
#
#

my $Word = "Book";

myprint1( $Word );

sub myprint1{
	my $Word = shift;
	print "Sub1 => Word from sub1 is : $Word\n";
	$Word = "Not Book";
}


myprint2( $Word );

sub myprint2{
	my ( $Word ) = @_;		# $_ ??
	print "Sub2 => Word from sub2 is : $Word\n";
}

myprint3( \$Word );

sub myprint3{
	my ( $Word ) = @_;		
	$$Word = "Not Book sub3";
	print "Sub3 => Word modify by sub3: $$Word\n";
}

myprint1( $Word );


myprint4( $Word, "like", "Some" );

sub myprint4{
	my $str1 = shift;
	my $str2 = shift;
	my $str3 = shift;

	my ( $str1, $str2, $str3 ) = @_;

	print "Sub4 => Str1: $str1,\tStr2: $str2,\tStr3: $str3\n";
}

$Word = myprint5( $Word );

sub myprint5{
	my ( $Word ) = @_;
	
	if ( $Word eq 'Book' ){ exit; }

	print "Sub5 => Change Word to 'Book'\n";
	return "Book";
}

myprint1( $Word );

