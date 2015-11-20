a:90:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:5:"samba";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Server to provide AD and SMB/CIFS services to clients";}i:2;i:22;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:75;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:269:"
samba [-D] [-i] [-M <model>] [--maximum-runtime=<seconds>] [-b]
        [--help] [--usage] [-d <debug level>] [--debug-stderr]
        [-s <configuration file>] [--option=<smb_conf_param>=<value>]
        [-l <log directory>] [--leak-report] [--leak-report-full] [-V]
";i:1;N;i:2;N;}i:2;i:82;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:82;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:32:"http://linux.die.net/man/7/samba";i:1;s:11:"(man samba)";}i:2;i:361;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:409;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:410;}i:11;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:410;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:416;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"firewall";i:1;i:2;i:2;i:416;}i:2;i:416;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:416;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:991:"
# seznam použitých portů
$ sudo netstat -tulpn | egrep "samba|smbd|nmbd|winbind" 

tcp        0      0 0.0.0.0:139             0.0.0.0:*               LISTEN      26712/smbd
tcp        0      0 0.0.0.0:445             0.0.0.0:*               LISTEN      26712/smbd
tcp6       0      0 :::139                  :::*                    LISTEN      26712/smbd
tcp6       0      0 :::445                  :::*                    LISTEN      26712/smbd
udp        0      0 192.168.1.255:137       0.0.0.0:*                           1548/nmbd
udp        0      0 192.168.1.111:137       0.0.0.0:*                           1548/nmbd
udp        0      0 0.0.0.0:137             0.0.0.0:*                           1548/nmbd
udp        0      0 192.168.1.255:138       0.0.0.0:*                           1548/nmbd
udp        0      0 192.168.1.111:138       0.0.0.0:*                           1548/nmbd
udp        0      0 0.0.0.0:138             0.0.0.0:*                           1548/nmbd
";i:1;s:4:"bash";i:2;N;}i:2;i:443;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:443;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"hlavní porty pro komunikaci: ";}i:2;i:1449;}i:18;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1479;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"139";}i:2;i:1481;}i:20;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1484;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:1486;}i:22;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1489;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"445";}i:2;i:1491;}i:24;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1494;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1496;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1497;}i:27;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:1497;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1505;}i:29;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"nastavení tiskárny";i:1;i:2;i:2;i:1505;}i:2;i:1505;}i:30;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1505;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:40:"
$ sudo su
$ apt-get install cups samba
";i:1;s:4:"bash";i:2;N;}i:2;i:1544;}i:32;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1598;}i:33;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1598;}i:34;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1598;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1602;}i:36;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1603;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"/etc/cups/cupsd.conf";}i:2;i:1605;}i:38;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1625;}i:39;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1627;}i:40;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1627;}i:41;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1627;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:161:"
# ze základu cups naslouchá pouze na localhost:631
http://localhost:631

# pokud bude stránka vyžadovat přihlášení, jedná se o udaje uživatele Linuxu
";i:1;s:4:"bash";i:2;N;}i:2;i:1634;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1634;}i:44;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":linux:ubuntu:snimek1.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"333";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1810;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1853;}i:46;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1854;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1856;}i:48;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":linux:ubuntu:snimek2.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"333";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1857;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1900;}i:50;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1901;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1903;}i:52;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":linux:ubuntu:snimek3.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"333";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1904;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1947;}i:54;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1948;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1950;}i:56;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":linux:ubuntu:snimek4.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"333";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1951;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1994;}i:58;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1995;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1997;}i:60;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":linux:ubuntu:snimek5.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"333";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1998;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2041;}i:62;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2042;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2044;}i:64;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":linux:ubuntu:snimek6.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"333";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:2045;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2088;}i:66;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2089;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2091;}i:68;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2093;}i:69;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"nastavení samba serveru";i:1;i:2;i:2;i:2093;}i:2;i:2093;}i:70;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2093;}i:71;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2130;}i:72;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2130;}i:73;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2130;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2134;}i:75;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2135;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"/etc/samba/smb.conf";}i:2;i:2137;}i:77;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2156;}i:78;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2158;}i:79;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2158;}i:80;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2158;}i:81;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:121:"
[samba]
path = /home/user
available = yes
valid users = user
read only = no
browseable = yes
public = no
writable = yes
";i:1;s:4:"bash";i:2;N;}i:2;i:2165;}i:82;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:45:"
# přidání uživatele
$ smbpasswd -a user
";i:1;s:4:"bash";i:2;N;}i:2;i:2306;}i:83;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2306;}i:84;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":linux:ubuntu:snimek7.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"333";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:2365;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2408;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2409;}i:87;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:2409;}i:88;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2414;}i:89;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2414;}}