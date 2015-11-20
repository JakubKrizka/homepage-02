a:11:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:123:"
genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=20
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
";i:1;s:4:"bash";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Run it:";}i:2;i:144;}i:4;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:157;}i:5;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:14:"
genpasswd 16
";i:1;s:4:"bash";i:2;N;}i:2;i:157;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:157;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Output:";}i:2;i:185;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:198;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:18:"
uw8CnDVMwC6vOKgW
";i:1;s:4:"bash";i:2;N;}i:2;i:198;}i:10;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:198;}}