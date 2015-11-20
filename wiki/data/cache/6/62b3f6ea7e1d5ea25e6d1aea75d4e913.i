a:26:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"apt";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"command-line interface";}i:2;i:20;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:42;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:313:"
 apt [-h] [-o=config_string] [-c=config_file] [-t=target_release]
           [-a=architecture] {list | search | show | update |
           install pkg [{=pkg_version_number | /target_release}]...  |
           remove pkg...  | upgrade | full-upgrade | edit-sources |
           {-v | --version} | {-h | --help}}
";i:1;N;i:2;N;}i:2;i:49;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:49;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:30:"http://linux.die.net/man/8/apt";i:1;s:9:"(man apt)";}i:2;i:372;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:416;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:417;}i:11;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:417;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:424;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"instalace balíčků/programů";i:1;i:2;i:2;i:424;}i:2;i:424;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:424;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:424;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:236:"apt (Advanced Package Tool) is the command-line tool for handling packages. It provides a commandline interface for the package management of the system. See also apt-get(8) and apt-cache(8) for more low-level command options. (man apt)";}i:2;i:469;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:705;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:338:"
# instalace balíku/programu
$ sudo apt-get install ***

# výpis nainstalovaných balíků/programů
$ dpkg --get-selections | grep -v deinstall

# výpis detailnějších informací
$ apt-cache show ***

# odinstalace a ponechání konfiguračních souborů
$ sudo apt-get remove ***

# odinstalace kompletní
$ sudo apt-get purge ***
";i:1;s:4:"bash";i:2;N;}i:2;i:712;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:712;}i:20;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:93:"http://www.tecmint.com/useful-basic-commands-of-apt-get-and-apt-cache-for-package-management/";i:1;s:24:"Detailnější možnosti";}i:2;i:1065;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1187;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1188;}i:23;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:1188;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1193;}i:25;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1193;}}