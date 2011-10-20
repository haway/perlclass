#!/usr/bin/perl
#

# CPAN

# perl -MCPAN -e "install Net::DNS";
# perl -MCPAN -e "install Net::Telnet";
# perl -MCPAN -e shell
# /Net::DNS/i

use Net::Telnet;
use Net::DNS;
my $ip = $ARGV[0];

my $q = new Net::Telnet;
my $ok = $q->open( Host => $ip,
        Port => 80,
        Errmode => 'return',
        Timeout => 2 );

if ( $ok ){
	print "Connection OK\n";
    $q->print("head / http/1.1\n", Errmode => 'return' );
    $q->print("host $ip", Errmode => 'return' );
    $q->print("\n", Errmode => 'return' );

    while ( $q->eof == "" ){
     	my $msg = $q->getline(errmode => "return", Timeout => 2 );
		print $msg if ( $msg =~ /Server:/i );
    }

}else{
    $q->close;
	print "Connection To server $ip... fail!\n";
}
print "Connection close\n";

