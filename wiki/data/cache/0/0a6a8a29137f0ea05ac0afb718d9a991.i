a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"následující kód umožní vyfiltrovat prohlížeče se zablokovaným javascriptem a přesměruje na stránku bez javascriptu ";}i:2;i:1;}i:3;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:129;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"noscript.html";}i:2;i:131;}i:5;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:144;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:146;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:320:"
<head>
  <noscript>
    <?php if (basename($_SERVER['REQUEST_URI']) != "noscript.html") { ?>
      <meta http-equiv="Refresh" content="0;noscript.html">
      <img src="noscript.html" alt="JavaScript is disabled"/>
    <?php } ?>
  </noscript>
</head>
<body>
  <!--
    Obsah s povoleným javascriptem...
  -->
</body>
";i:1;s:11:"html4strict";i:2;N;}i:2;i:154;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:154;}}