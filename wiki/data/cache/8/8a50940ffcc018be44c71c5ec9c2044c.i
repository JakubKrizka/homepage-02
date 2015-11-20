a:15:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"ntp";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Network Time Protocol (NTP) daemon";}i:2;i:20;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:54;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:279:"
ntpd [ -46aAbdDgLmnNqx ] [ -c conffile ] [ -f driftfile ] [ -i jaildir ] [ -I iface ] [ -k keyfile] [ -l logfile ] [ -p pidfile ] [ -P priority ] [ -r broadcastdelay ] [ -s statsdir] [ -t key ] [ -u user[:group] ] [ -U interface_update_interval ] [ -v variable] [ -V variable ]
";i:1;N;i:2;N;}i:2;i:61;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:61;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:31:"http://linux.die.net/man/8/ntpd";i:1;s:10:"(man ntpd)";}i:2;i:350;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:396;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:397;}i:11;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:397;}i:12;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:242:"
# instalace
$ sudo apt-get install ntp

# zastavení procesu
$ sudo service ntp stop

# synchronizace 
$ sudo ntpd -gq
ntpd: time set +28.282913s

# spuštění procesu
$ sudo service ntp start

# kontrola
$ date
Pá led 9 03:29:51 CET 2015
";i:1;s:4:"bash";i:2;N;}i:2;i:409;}i:13;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:664;}i:14;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:664;}}