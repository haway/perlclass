#!/usr/bin/perl
#


# Array
print "\n\t##### Array #####\n";

@aStr1 = ("This", "is", "a", "book");
@aStr2 = qw( That is a book );
print "\@aStr2 = @aStr2", "\n";
print "\@aStr1 = @aStr1", "\n";

print "\$aStr1[0] = $aStr1[0]\n";

#********************************************
print @aStr1,"\n";

print "aStr1:". @aStr1 ."\n";
#********************************************

foreach $aStr1 ( @aStr1 ){
	print "For \@aStr1: $aStr1\n";
}


print "\n\t##### Hash #####\n";

# Hash
%hStr1= ( 'one' => 'str1', 'two' => 'str2', "three" => 'str3' );

print "Access one hash: $hStr1{one}", "\n";

print "Hash in for:\n";
foreach $k ( keys %hStr1 ){
	print "\t$k => $hStr1{ $k }\n";
}

print "\n";
foreach $k ( %hStr1 ){
	print "\$k = $k\n";
}

