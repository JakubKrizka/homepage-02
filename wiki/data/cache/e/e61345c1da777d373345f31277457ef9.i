a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:445:"
# nastavit cílovou adresu
$url = 'hostname';
# definovat POST proměnné
$data = array('pin' => 'value1', 'text2' => 'value2',);
$options = array(
        'http' => array(
        'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
        'method'  => 'POST',
        'content' => http_build_query($data),
    )
);
$context  = stream_context_create($options);
$result = file_get_contents($url, false, $context);
echo $result;
";i:1;s:3:"php";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}