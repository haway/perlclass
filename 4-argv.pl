#!/usr/bin/perl
#
# ARGV 是專門存放參數的陣列
# 

print "argv total ", $#ARGV +1 ,"\n";

print "I have 0 - $#ARGV ARGV\n";

# 沒有輸入參數的話 ARGV = -1
if ( $#ARGV < 0 ){
	print( "Please give me some argv, exit!!", "\n" );
}

#$OO = shift;
#$KK = shift;

for( $i = 0 ; $i <= $#ARGV ; $i++ ){
	print "\$ARGV[$i]: $ARGV[$i]\n";
}

#print "The first argv is : $OO\n";
#print "The second argv is : $KK\n";
