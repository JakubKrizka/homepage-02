a:90:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"vsftpd";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Very Secure ";}i:2;i:23;}i:5;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"FTP";}i:2;i:35;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" Daemon";}i:2;i:38;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:45;}i:8;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:"
vsftpd [configuration file and / or options]
";i:1;N;i:2;N;}i:2;i:52;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:52;}i:10;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:33:"http://linux.die.net/man/8/vsftpd";i:1;s:12:"(man vsftpd)";}i:2;i:108;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:158;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:159;}i:13;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:159;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:166;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Secure TLS";i:1;i:1;i:2;i:166;}i:2;i:166;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:166;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:166;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Zabezpečené připojení ";}i:2;i:192;}i:19;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"FTP";}i:2;i:218;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:" (";}i:2;i:221;}i:21;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:55:"https://help.ubuntu.com/lts/serverguide/ftp-server.html";i:1;s:29:"více info o FTP přípojení";}i:2;i:223;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:")
";}i:2;i:312;}i:23;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:314;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:316;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:11:"noteclassic";}i:2;i:1;i:3;s:6:"<note>";}i:2;i:317;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:304:"Protokol TLS je založen na výměně záznamů. Každý záznam může být volitelně komprimován, může k němu být připojen autentizační kód (message authentication code, MAC) a může být zašifrován. Každému záznamu je přiřazen typ obsahu, který určuje protokol vyšší úrovně. (";}i:2;i:3;i:3;s:304:"Protokol TLS je založen na výměně záznamů. Každý záznam může být volitelně komprimován, může k němu být připojen autentizační kód (message authentication code, MAC) a může být zašifrován. Každému záznamu je přiřazen typ obsahu, který určuje protokol vyšší úrovně. (";}i:2;i:323;}i:27;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:53:"http://cs.wikipedia.org/wiki/Transport_Layer_Security";i:1;s:9:"Wikipedia";}i:2;i:627;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:1:")";}i:2;i:3;i:3;s:1:")";}i:2;i:694;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:695;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:702;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:851:"
# přepnout na roota
$ sudo su

# vytvoření složky pro vsftpd
$ mkdir /etc/vsftpd

# vytvoření certifikátu
$ openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /etc/vsftpd/vsftpd.pem -out /etc/vsftpd/vsftpd.pem

# vyplnění základních informací o majiteli certifikátu

# bezpečnost pouze pro čtení
$ chmod -R 444 /etc/vsftpd

# nastavení /etc/vsftpd.conf

write_enable=YES

ssl_enable=YES
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES

ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
rsa_cert_file=/etc/vsftpd/vsftpd.pem
rsa_private_key_file=/etc/vsftpd/vsftpd.pem

port_enable=YES
pasv_enable=YES
pasv_max_port=12100
pasv_min_port=12000

# toto zajistí zabezpečené připojení přes TLS 
# nezapomenout na povolení firewallu pro port **21, 12000-12100** a restartovat ftp server
$ service vsftpd restart
";i:1;s:4:"bash";i:2;N;}i:2;i:709;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1575;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Připojení přes FileZillu:";i:1;i:2;i:2;i:1575;}i:2;i:1575;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1575;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1575;}i:36;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:":linux:ubuntu:filezilla-01.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"666";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1618;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1666;}i:38;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:":linux:ubuntu:filezilla-02.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"666";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1667;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1715;}i:40;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:":linux:ubuntu:filezilla-03.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"666";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1716;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1764;}i:42;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:":linux:ubuntu:filezilla-04.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"666";i:4;N;i:5;s:5:"cache";i:6;s:6:"direct";}i:2;i:1765;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1813;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1814;}i:45;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:1814;}i:46;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1821;}i:47;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:5:"pasiv";i:1;i:1;i:2;i:1821;}i:2;i:1821;}i:48;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1821;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:131:"
# /etc/vsftpd.conf

port_enable=YES
pasv_enable=YES
pasv_max_port=12100
pasv_min_port=12000

# nezapomenout nastavit firewall !!!
";i:1;s:4:"bash";i:2;N;}i:2;i:1847;}i:50;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:1992;}i:51;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1998;}i:52;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"chroot";i:1;i:1;i:2;i:1998;}i:2;i:1998;}i:53;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1998;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1998;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"aneb uzamčení uživatele v home složce";}i:2;i:2020;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2061;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2061;}i:58;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2063;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"/etc/vsftpd.conf";}i:2;i:2065;}i:60;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2081;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2083;}i:62;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:50:"
chroot_local_user=YES
allow_writeable_chroot=YES
";i:1;s:4:"bash";i:2;N;}i:2;i:2090;}i:63;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:2154;}i:64;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2161;}i:65;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"Errors";i:1;i:1;i:2;i:2161;}i:2;i:2161;}i:66;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2161;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2182;}i:68;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"error 500";i:1;i:2;i:2;i:2182;}i:2;i:2182;}i:69;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2182;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2182;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"In vsftpd version 3 add this line in vsftpd.conf (/etc/vsftpd.conf or /etc/vsftpd/vsftpd.conf):";}i:2;i:2205;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2300;}i:73;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:76:"
allow_writeable_chroot=YES

# And restart service
$ service vsftpd restart
";i:1;s:4:"bash";i:2;N;}i:2;i:2307;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2307;}i:75;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:120:"http://stackoverflow.com/questions/22420177/500-oops-vsftpd-refusing-to-run-with-writable-root-inside-chroot-login-faile";i:1;s:10:"Nepomohlo?";}i:2;i:2398;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2533;}i:77;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2535;}i:78;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"error 530";i:1;i:2;i:2;i:2535;}i:2;i:2535;}i:79;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2535;}i:80;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2535;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"/etc/vsftpd.conf";}i:2;i:2558;}i:82;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2574;}i:83;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:70:"
pam_service_name=ftp

# And restart service
$ service vsftpd restart
";i:1;s:4:"bash";i:2;N;}i:2;i:2581;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2581;}i:85;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:64:"http://askubuntu.com/questions/413677/vsftpd-530-login-incorrect";i:1;s:10:"Nepomohlo?";}i:2;i:2666;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2745;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2745;}i:88;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2745;}i:89;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2745;}}