#!/usr/bin/perl
#

use DBI();

my $Readdbh = DBI->connect("DBI:mysql:database=ipcal","username","password");

my $sql = "SELECT `date`,`rawdata` FROM `dnsresults` where `date` like '\%$YD\%'";

#$Readdbh->do( $sql );

my $Readsth = $Readdbh->prepare( $sql );
$Readsth->execute();

while( my $ref = $Readsth->fetchrow_hashref() ){
    $raw = $ref->{'rawdata'};
    $raw1 = $ref->{'date'};
	print "$raw\n";
}

