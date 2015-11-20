a:30:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"info about";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:27;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"CPU";i:1;i:2;i:2;i:27;}i:2;i:27;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:27;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:19:"
cat /proc/cpuinfo
";i:1;s:4:"bash";i:2;N;}i:2;i:49;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:83;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"GPU";i:1;i:2;i:2;i:83;}i:2;i:83;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:83;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:22:"
sudo lshw -C display
";i:1;s:4:"bash";i:2;N;}i:2;i:105;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:142;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:2:"OS";i:1;i:2;i:2;i:142;}i:2;i:142;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:142;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:10:"
uname -a
";i:1;s:4:"bash";i:2;N;}i:2;i:163;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:188;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"HDD (smart)";i:1;i:2;i:2;i:188;}i:2;i:188;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:188;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:"
# instalace
sudo apt-get install smartmontools
# mapování /dev/sdX
sudo fdisk -l
# vypsat info
sudo smartctl --health /dev/sdX
# vše
sudo smartctl --all /dev/sdX
";i:1;s:4:"bash";i:2;N;}i:2;i:218;}i:19;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:398;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:405;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Testované HDD";i:1;i:2;i:2;i:405;}i:2;i:405;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:405;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:405;}i:24;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:33:"linux:ubuntu:info about:01-Faster";i:1;N;}i:2;i:433;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:470;}i:26;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:5:"200GB";i:1;N;}i:2;i:471;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:480;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:481;}i:29;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:481;}}