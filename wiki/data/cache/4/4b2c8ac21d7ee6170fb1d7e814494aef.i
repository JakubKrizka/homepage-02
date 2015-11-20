a:58:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"tar";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"The GNU version of the tar archiving utility";}i:2;i:20;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:64;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:196:"
tar [-] A --catenate --concatenate | c --create | d --diff --compare |
         --delete | r --append | t --list | --test-label | u --update | x
         --extract --get [options] [pathname ...]
";i:1;N;i:2;N;}i:2;i:71;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:71;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:61:"http://manpages.ubuntu.com/manpages/trusty/en/man1/tar.1.html";i:1;s:9:"(man tar)";}i:2;i:277;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:352;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:353;}i:11;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:353;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:360;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:".tar";i:1;i:2;i:2;i:360;}i:2;i:360;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:360;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:360;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"Nejrozšířenější Linux program na archivování. Zátěž procesoru minimální. Jednoduše přesune tisíce malých souborů do jednoho velkého. Velikost je cca stejná.";}i:2;i:378;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:554;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:102:"
$ tar -cvf archiv.tar /cesta/k/slozce/kterou/chcete/zabalit

# Opačný proces
$ tar -xvf archiv.tar
";i:1;s:4:"bash";i:2;N;}i:2;i:561;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:678;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:".gz";i:1;i:2;i:2;i:678;}i:2;i:678;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:678;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:678;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:177:"Zabalí složku do archivu a k tomu ještě provede kompresi. Střední zátěž procesoru. Například složku dokuwiki na které běží tato wiki se změnší z 15MB na 4MB. ";}i:2;i:695;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:872;}i:25;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:110:"
$ tar -zcvf archiv.tar.gz /cesta/k/slozce/kterou/chcete/zabalit

# Opačný proces
$ tar -zxvf archiv.tar.gz
";i:1;s:4:"bash";i:2;N;}i:2;i:879;}i:26;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1004;}i:27;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:".bz2";i:1;i:2;i:2;i:1004;}i:2;i:1004;}i:28;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1004;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1004;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"Je to obdoba tar.gz. Používá složitější proměné. Vysoká zátěž procesoru. Například složku dokuwiki zmenší z 15MB na 3MB. ";}i:2;i:1022;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1161;}i:32;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:113:"
$ tar -jcvf archiv.tar.bz2 /cesta/k/slozce/kterou/chcete/zabalit

# Opačný proces:
$ tar -jxvf archiv.tar.bz2
";i:1;s:4:"bash";i:2;N;}i:2;i:1168;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1168;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:"Pokud chcete archiv extrahovat do vybrané složky, dopíšte prefix -C a vybere kam. Příklad:";}i:2;i:1296;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1392;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:48:"
tar -xvf archiv.tar -C /sem/to/chci/extrahovat
";i:1;s:4:"bash";i:2;N;}i:2;i:1399;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1462;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"tar + pv";i:1;i:2;i:2;i:1462;}i:2;i:1462;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1462;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:302:"
# pro zobrazení průbehu je potřeba mít nainstalovaný balíček pv (sudo apt-get install pv)
$ sudo tar cf - /folder-with-big-files -P | pv -s $(du -sb /folder-with-big-files | awk '{print $1}') | gzip > big-files.tar.gz
 
# výsledek:
231MB 0:00:14 [15,8MB/s] [=============>               ] 51%
";i:1;s:4:"bash";i:2;N;}i:2;i:1489;}i:41;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1806;}i:42;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"automatický script";i:1;i:2;i:2;i:1806;}i:2;i:1806;}i:43;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1806;}i:44;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:798:"
extract () {
   if [ -f $1 ] ; then
       case $1 in
	*.tar.bz2)	tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
	*.tar.gz)	tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
	*.tar.xz)	tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
	*.bz2)		bunzip2 $1 && cd $(basename "$1" /bz2) ;;
	*.rar)		unrar x $1 && cd $(basename "$1" .rar) ;;
	*.gz)		gunzip $1 && cd $(basename "$1" .gz) ;;
	*.tar)		tar xvf $1 && cd $(basename "$1" .tar) ;;
	*.tbz2)		tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
	*.tgz)		tar xvzf $1 && cd $(basename "$1" .tgz) ;;
	*.zip)		unzip $1 && cd $(basename "$1" .zip) ;;
	*.Z)		uncompress $1 && cd $(basename "$1" .Z) ;;
	*.7z)		7z x $1 && cd $(basename "$1" .7z) ;;
	*)		echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }
";i:1;s:4:"bash";i:2;N;}i:2;i:1844;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1844;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2657;}i:47;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:2658;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2661;}i:49;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2662;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"2015/01/17 23:47 ";}i:2;i:2664;}i:51;a:3:{i:0;s:9:"emaillink";i:1;a:2:{i:0;s:20:"email@jakubkrizka.cz";i:1;s:14:"Jakub Křižka";}i:2;i:2681;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2720;}i:53;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2721;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2723;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2723;}i:56;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2723;}i:57;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2723;}}