a:10:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:"cron";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:21;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:21;}i:5;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:76:"http://code.tutsplus.com/tutorials/scheduling-tasks-with-cron-jobs--net-8800";i:1;N;}i:2;i:27;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:103;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:277:"
# edit
crontab -e
# výpis
crontab -l
# výmaz
crontab -r
# tvar příkazu který se spouští každé 3 minuty, to co soubor vypíše se zapíše do index.log a chyby do index.err
*/3 * * * * php /var/www/html/index.php >> /var/www/html/index.log 2>> /var/www/html/index.err
";i:1;s:4:"bash";i:2;N;}i:2;i:110;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:400;}i:9;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:400;}}