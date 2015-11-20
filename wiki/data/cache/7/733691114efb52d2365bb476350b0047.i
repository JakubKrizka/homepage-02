a:81:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"uTorrent na Linux Ubuntu Server";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:47;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:54;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"Systém";i:1;i:2;i:2;i:54;}i:2;i:54;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:54;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:54;}i:8;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:75;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-53-generic x86_64)";}i:2;i:77;}i:10;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:132;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:134;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:135;}i:13;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:135;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:142;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Balíček";i:1;i:2;i:2;i:142;}i:2;i:142;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:142;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:142;}i:18;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:39:"http://www.utorrent.com/downloads/linux";i:1;N;}i:2;i:165;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:208;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:209;}i:21;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:209;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:216;}i:23;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Instalace";i:1;i:2;i:2;i:216;}i:2;i:216;}i:24;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:216;}i:25;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:237:"
tar -xvzf utserver.tar.gz -C /opt/
# /opt/utorrent-server-*

# chmod -R 777 /opt/utorrent-server-v3_0/
# vytvořit odkaz (cesta se může lišit číslem verze!)
ln -s /opt/utserver/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
";i:1;s:4:"bash";i:2;N;}i:2;i:245;}i:26;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:496;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:503;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"Spuštění";i:1;i:2;i:2;i:503;}i:2;i:503;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:503;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:503;}i:31;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:27:":linux:ubuntu:vystrizek.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"720";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:528;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:573;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:579;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:137:"
# spušění
utserver -settingspath /opt/utorrent-server-alpha-v3_3/
# zjištění ipadresy
ip addr 
# webUI
http://ip-adresa:8080/gui/
";i:1;s:4:"bash";i:2;N;}i:2;i:579;}i:35;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:56:"
* jméno: admin
* heslo: nechat prázdné a přihlásit";}i:2;i:729;}i:36;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:792;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:799;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"Automatické spuštění se systémem";i:1;i:2;i:2;i:799;}i:2;i:799;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:799;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:27:"
nano /etc/init.d/utserver
";i:1;s:4:"bash";i:2;N;}i:2;i:854;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:854;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"sem vložit následující text: ";}i:2;i:896;}i:43;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:929;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"(třeba nastavit hodnoty: CHDIR & USER)";}i:2;i:931;}i:45;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:970;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:972;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:978;}i:48;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1317:"
CHDIR=*****cesta k souboru v /opt/....*****
NAME=utserver
OPTIONS="-LOGFILE"
DAEMON=$CHDIR/$NAME
USER=*****uživatel, který to bude spouštět*****
PIDFILE=/var/run/$NAME.pid
STOP_TIMEOUT=5
 
[ -x $DAEMON ] || exit 1

. /lib/lsb/init-functions

start_daemon () {
        pgrep -U $USER $NAME >/dev/null && echo "$NAME is already running" && log_end_msg 1
        rm -f $PIDFILE >/dev/null
        start-stop-daemon --start --quiet --make-pidfile --pidfile $PIDFILE --chuid $USER --chdir $CHDIR --background --exec $DAEMON -- $OPTIONS
}
 
case "$1" in
    start)             
        log_daemon_msg "Starting $NAME daemon" "$NAME"
        start_daemon
        log_end_msg 0
        ;;
    stop)
        log_daemon_msg "Stopping $NAME daemon" "$NAME"
        start-stop-daemon --stop --quiet --pidfile $PIDFILE --exec $DAEMON --retry $STOP_TIMEOUT || log_end_msg 1
        pgrep -U $USER $NAME >/dev/null || rm -f $PIDFILE >/dev/null
        log_end_msg 0
        ;;
    restart)
        log_daemon_msg "Restarting $NAME daemon" "$NAME"
        start-stop-daemon --stop --quiet --pidfile $PIDFILE --exec $DAEMON --retry $STOP_TIMEOUT || log_end_msg 1
        start_daemon
        log_end_msg 0
        ;;
    *)
        echo "Usage: /etc/init.d/$NAME {start|stop|restart}"
        exit 2
        ;;
esac
     
exit 0
";i:1;s:4:"bash";i:2;N;}i:2;i:978;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:108:"
# nastavit práva
chmod a+x /etc/init.d/utserver
# nastavení po spuštění
update-rc.d utserver defaults
";i:1;s:4:"bash";i:2;N;}i:2;i:2315;}i:50;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:2439;}i:51;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2446;}i:52;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Možné chyby";i:1;i:2;i:2;i:2446;}i:2;i:2446;}i:53;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2446;}i:54;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2472;}i:55;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2472;}i:56;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2472;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:144:" Nejdříve upozorním že to musíte dělat jako root, pokud byste to dělali jako jiní uživatelé, tak před ty příkazy dávejte příkaz ";}i:2;i:2476;}i:58;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2620;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"sudo";}i:2;i:2621;}i:60;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2625;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2626;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2627;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2627;}i:64;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2627;}i:65;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2627;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:" Někomu může v průběhu zahlásit chybějící balíček, ten doinstalujete příkazem ";}i:2;i:2631;}i:67;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2722;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"apt-get install libssl0.9.8:i386";}i:2;i:2723;}i:69;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2755;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" ale mě osobně se to nestalo tak nevím.";}i:2;i:2756;}i:71;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2798;}i:72;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2798;}i:73;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2798;}i:74;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2798;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:276:" Vše ok ale při stahování/odesílání se nepřipojíte? Zkontrolujte směrování portů, je možné, že vám to blokuje firewall nebo modem, v nastavení můžete změnit port. A nebo si vyberte na zkoušku jakýkoliv populární torrent a uvidíte v čem je problém. ";}i:2;i:2802;}i:76;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3078;}i:77;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3078;}i:78;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:3078;}i:79;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3078;}i:80;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3078;}}