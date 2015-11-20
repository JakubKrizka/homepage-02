<?php
$source = 'http://mobilenet.cz/rss';

// load as string
$xmlstr = file_get_contents($source);
$xmlcont = new SimpleXMLElement($xmlstr);
foreach($xmlcont as $url)
{
    echo "{$url->loc} - {$url->lastmod} - {$url->changefreq} - {$url->priority}\r\n";
}
?>