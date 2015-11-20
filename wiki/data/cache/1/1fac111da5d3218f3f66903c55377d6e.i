a:15:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:97:"
sudo su
apt-get install lm-sensors
sensors-detect
yes...yes....yes...yes...enter... yes
sensors
";i:1;s:4:"bash";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"pro automatický update výsledků:";}i:2;i:118;}i:4;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:153;}i:5;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:34:"
watch -n 1 --differences sensors
";i:1;s:4:"bash";i:2;N;}i:2;i:160;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:160;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"nebo lze udělat bash script:";}i:2;i:209;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:238;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:" 
while true; do
    sleep 1
    sensors
done
";i:1;s:4:"bash";i:2;N;}i:2;i:245;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:245;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"monitoring hdd";}i:2;i:306;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:320;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:136:"
apt-get install smartmontools
smartctl --scan
smartctl -a /dev/sdx
smartctl -a /dev/sdx | grep Temperature_Celsius | awk '{print $4}'

";i:1;s:4:"bash";i:2;N;}i:2;i:327;}i:14;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:327;}}