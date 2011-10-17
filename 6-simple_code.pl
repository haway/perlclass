#!/usr/bin/perl
#

print "\n\t##### Array #####\n";

@aStr1 = ("This", "is", "a", "book");
@aStr2 = qw( That is a book );

foreach ( @aStr1 ){
	print "\@aStr1 : $_\n" ;
}

print "\n\t##### Hash #####\n";

# Hash
%hStr1= ( 'one' => 'str1', 'two' => 'str2', "three" => 'str3' );

print "Hash in for:\n";
foreach ( keys %hStr1 ){
	print "\t$k => $hStr1{ $_ }\n";
}

print "\n";
foreach ( %hStr1 ){
	print "\$k = $_\n";
}


while( <> ){

        print "Your Keyin is : $_";

        chomp;

        fun1 if ( $_ eq 'exit' );
}

