a:22:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"screen";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"screen manager with VT100/ANSI terminal emulation";}i:2;i:23;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:72;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:123:"
screen [ -options ] [ cmd [ args ] ]
       screen -r [[pid.]tty[.host]]
       screen -r sessionowner/[[pid.]tty[.host]]
";i:1;N;i:2;N;}i:2;i:79;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:79;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:54:"https://www.gnu.org/software/screen/manual/screen.html";i:1;s:12:"(man screen)";}i:2;i:212;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:283;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:284;}i:11;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:284;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:284;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:302:"někdy je opravdu potřeba udělat časově velmi, velmi náročný úkon (komprimace, kopírování velkých souborů apod.) a bez přerušení ho provést. Taky je potřeba to občas zkontrolovat a pokud spadne, spojení opět navázat zpět, bez přerušení daného úkonu. Máme tu program screen:";}i:2;i:291;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:593;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:397:"
# instalace
$ sudo apt-get install screen
 
# spuštění screen
$ screen
 
# nyní se pustil tzv. demon, který běží na pozadí, při přerušení kominikace stačí zadat:
$ screen -r
 
# někdy je potřeba více screen oken, v otevřeném screen stiskneme
$ ctrl+a+c
 
# přepínání mezi screeny lze:
$ ctrl+a ctrl+a
 
# nebo pokud je více oken
$ ctrl+a+0...9
 
# zavření okna:
$ exit
";i:1;s:4:"bash";i:2;N;}i:2;i:600;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:600;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Další možnosti:";}i:2;i:1012;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1030;}i:19;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:106:"
# výpis screenů
$ screen -list
 
# odpojení určitého screenu, př:
$ screen -D 1636.pts-21.hostname
";i:1;s:4:"bash";i:2;N;}i:2;i:1037;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1156;}i:21;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1156;}}