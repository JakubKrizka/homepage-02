<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-62673853-2', 'auto');
  ga('send', 'pageview', {
  page: '/info',
  title: 'Info'
});
</script>
<?php
echo '<div id="wrapper">';
/**
 * netstat.php - Show online status of hosts and services
 *
 * This script is intended to provide a simplified, easily comprehensible
 * and aesthetically pleasing overview of the online status of hosts and
 * services. Checks are done in real-time but they only check whether
 * a port is open (which might be sufficient if your hosts are monitored
 * by full-blown monitoring tools anyway and all you want is a simple
 * interface for e.g. users or clients).
 *
 * This netstat.php has been rewritten and extended by Todd E. Johnson.
 * It is based on the original netstat 0.x by Andreas Schamanek, still
 * available at http://www.fam.tuwien.ac.at/~schamane/sysadmin/netstat/
 *
 * Requirements: fsockopen(), for ICMP pings also exec()
 *
 * (License + History: see also end of file)
 *
 * @author     Todd E. Johnson <http://www.toddejohnson.net>
 * @author     Andreas Schamanek <http://andreas.schamanek.net>
 * @license    GPL <http://www.gnu.org/licenses/gpl.html>
 * @copyright  (c) 2012 Todd E. Johnson, Andreas Schamanek
 *
 */



// Use php netstat.php genconfig to create netstat.conf.php then
// edit netstat.conf.php with your configuration.  


// ------------------------------------------------- functions part of script
/**
 * Catch Exceptions
 * @param Exception $err
 */
function catchExceptions($err){
	global $config;
	echo "Error with your request!  Please try again later.  " .
		"If the problem persists contact <a href=\"".$config['contact']."\">".$config['contact']."</a>.";
	error_log($err->__toString(),0);
	exit(1);
}

// Report no PHP errors (to be safe we include this very early)
error_reporting(0);
set_exception_handler('catchExceptions');

/**
 * Defaults for generic config
 * @return Default configuration
 */
function defaultConfig(){
	$config=array();
	$config['version'] = '~ git master ~ ';
	$config['description'] = "Online status of hosts and services provided by netstat.php";
	
	
	// below we set up some silly defaults; it is recommended to save your
	// own settings in $configfile; if readable it will override our defaults;
	// for a list of all configuration variables see http://wox.at/as/_/netstat_php
	$config['configfile'] = 'netstat.conf.php';
	
	// my network, title and headline of the page
	$config['title'] = "Network Status";
	$config['headline'] = $config['title'];
	
	// if $alertfile exists the contents will be included()/shown (use HTML!)
	$config['alertfile'] = 'netstat.txt';
	
	// checks (use pipes (|) with care ;)
	//   syntax: host or IP to check | port | description
	//     host/IP
	// 	     IPv6 addresses must be wrapped in brackets eg [2001:db8::1].  If you
	//       need to check a ssl service like HTTPS, SMTPS, or IMAPS you can use ssl://[2001:db8::1]
	//     port
	//       if $port = 'ping' an ICMP ping will be executed
	//       if $port = 'ping6' an ICMPv6 ping will be executed
	//       if $port = 'headline' $host is printed as a headline
	
	$config['checks'] = array(
	
	     'localhost|headline',
	 'jakubkrizka.cz | 80 	| <a href="https://www.oneadmin.cz/onebit/">WWW<a>',
	 'ftp.jakubkrizka.cz | 21    | <a href="http://webftp.onebit.cz/">FTP<a>',
	 'mysql.jakubkrizka.cz | 80  | <a href="http://mysql.jakubkrizka.cz">MySQL</a>',
	 'mail.jakubkrizka.cz | 993  | <a href="http://webmail.onebit.cz/">Email</a>',

	);
	
	// exec command for ping: -l3 (preload) is recommended but
	//defaults($ping_command, 'ping -l3 -c3 -w1 -q'); // might not work everywhere
	$config['ping_command'] = 'ping -c3 -w1 -q';
	$config['ping6_command'] = 'ping6 -c3 -w1 -q';
	
	// fsockopen timeout; might need adjustment depending on network
	$config['timeout'] = 4;
	
	// show a very simple progress indicator (requires Javascript)
	// may be disabled also by adding '?noprogress' to the script's URL
	$config['progressindicator'] = FALSE;
	
	// strings for online and offline (by default these are used for CSS, too)
	$config['online'] = 'online';
	$config['offline'] = 'offline';
	
	// print date and/or time (leave empty to show no timestamp) j F Y H:i:s T
	$config['datetime'] = 'j F Y H:i:s T';
	
	// RSS alert feed
	$config['rssfeed'] = FALSE; // use to enable or disable RSS feeds
	// URL of RSS feed
	$config['rssfeedurl'] = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['SCRIPT_NAME'].'?rss';
	// RSS feed title
	$config['rsstitle'] = "RSS alert feed of {$config['title']}";
	// RSS header e.g. to include in $htmlheader; set to '' to offer no RSS 
	$config['rssheader'] = '<link rel="alternate" type="application/rss+xml" '."title=\"{$config['rsstitle']}\" href=\"{$config['rssfeedurl']}\" />";
	// RSS alert link (might point e.g. to your network status homepage)
	$config['rsslink'] = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['SCRIPT_NAME'].'?noprogress';
	// RSS date and/or time format (here we use a ISO 8601 format)
	$config['rssdatetime'] = 'o-m-d H:i:s T';
	
	// HTML Header
	$config['htmlheader'] = <<<EOH
<style type="text/css">
</style>
EOH;
	if ($config['datetime']) echo '<section><p class="datetime">Stránka načtena<br>' . date($config['datetime']) . "</p>\n";
	// HTML/page footer
	$config['htmlfooter'] = "</div>";
	
	// Amount of time to cache the script.  0 to disable.
	$config['cachetime'] = 5*60;
	// path to writable directory we can cache in.  Null or false will disable caching.
	$config['cachepath'] = getcwd() .'/files';
	
	// Your support/admin contact address
	$config['contact'] = 'N/A';
	return $config;
}

/**
 * Parse user supplied config
 * @param string Configuration file
 * @param array Configuration defaults
 * @return array Configuration array
 */
function parseConfig($file, $config){
	// including $configfile if available
	if (file_exists($file) && is_readable($file)){
		@include($file);
		foreach($config as $key=>$var){
			if(isset($$key)){
				$config[$key]=$$key;
			}
		}
	}
	
	return $config;
}

/**
 * Generate the default config to simplify instalation.
 * @param string Filename for config
 */
function genConfig(){
	global $config;
	if(file_exists($config['configfile'])){
			die("Config file alread exists!\n");
	}
	$fi=fopen($_SERVER['PHP_SELF'],'r');
	if($fi===false) die("Error opening ".$_SERVER['PHP_SELF']);
	
	$fo=fopen($config['configfile'],'w');
	if($fo===false) die("Error opening ".$config['configfile']);
	fwrite($fo, "<?php\n");
	fwrite($fo, "/*\n");
	fwrite($fo, " * This file contains the commented defaults.  Feel free to delete\n");
	fwrite($fo, " * the unused options. \n");
	fwrite($fo, " */\n");
	
	while(($l=fgets($fi,400))!== false){
		if (trim($l)=='$config=array();'){
			break;
		}
	}
	while(($l=fgets($fi))!== false){
		if(trim($l)=='}' || trim($l)=='return $config;'){
			break;
		}
		fwrite($fo,preg_replace('/\$config\[[\'"]([^\'"]+)[\'"]\]/','\$$1',"//".trim($l))."\n");
	}
	fclose($fi);
	fclose($fo);
}

/**
 * Quick way to create status update.  
 * You shouldn't have to think about what todo when you have problems
 * Run from command line only!
 */
function genStatusUpdate(){
	global $config;

	$date=date('Y-m-d H:i O');
	$message=readline("Enter the message you would like to use:");
	$statusstr=<<<EOT
<p><b>Status as of $date</b><br />
$message
</p>
EOT;

	if((file_exists($config['alertfile']) && is_writable($config['alertfile'])) || is_writable(dirname($config['alertfile']))){
		$fp=fopen($config['alertfile'],'w');
		if($fp===false) die("Error writing alert file!");
		fwrite($fp, $statusstr);
		fclose($fp);
	}else{
	  die("File Exists/Not Writable");
	}

}

/**
 * RSS code
 */


/**
 * HTML Code
 * @param cache Cache object
 */
function html($cache){
	global $config;
	// output HTML/page header
	// echo $config['htmlheader'];
	
	// headline, date and time and start of table
	
	// show the contents of $alertfile if it is readable and larger than 2 bytes
	if (file_exists($config['alertfile']) && is_readable($config['alertfile']))
	{
		clearstatcache();
		if (filesize($config['alertfile']) > 2)
		{
			echo "<div id=\"alert\">\n";
			@include($config['alertfile']);
			echo "</div>\n";
		}
	}
	

	// main loop of checks
	foreach ($config['checks'] as $check)
	{
		$status = $config['offline'];  // default state
		$diagnostics = '';   // mouse-over for tooltips
		$output = TRUE;      // print a line or print no line
		list($host,$port,$description) = explode('|',"$check||"); // the 2 extra '|'s are to avoid notices about undefined offsets
		$host = trim($host);
		$port = trim($port);
	
		switch ($port)
		{
			case '': // ignore lines with empty port
				$output = FALSE; break;
			case (substr($port,0,1)=='-'): // negative ports, '-ping', and
			    // any "port" starting with '-' is considered a disabled check
				$output = FALSE; break;
			case 'headline': // print a headline within the status table
				// we enclose it with invisible <br>== == for nicer text output


				echo '<table><tbody><thead><tr><td class="nadpis" colspan="3"><h1>'
					. $host
					. "</h1></td></tr></thead>\n";
				$output = FALSE; break;
			case 'ping': // do an ICMP ping
				$ping=exec("{$config['ping_command']} $host",$pingoutput,$pingreturn);
				// This should continue on into ping6 as they share everything but the command. 
			case 'ping6': // do an ICMP ping
				if(!isset($ping)){
					$ping=exec("{$config['ping6_command']} $host",$pingoutput,$pingreturn);
				}
				if(strlen($ping)>10) 
				{
					// strlen($ping)>10 works around a bug in Debian ping (", pipe 3")
					// http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=456192
					$status = $config['online']; $diagnostics = "$ping :: $pingreturn"; 
				}
				else $diagnostics = "$ping :: $pingreturn";
				// uncomment this if you want the full output as HTML comment
				//echo "\n<!-- "; print_r($pingoutput); echo "-->\n";
				// *nix ping command's return value meanings:
				// 0: all OK; 1: an error occured; 2: host unknown
				unset($pingoutput);
				unset($ping);
				break;
			default: // look if a TCP connection to port can be opened
				$time_start = microtime(true);
				$fp = @fsockopen($host, $port, $errno, $errstr, $config['timeout']);
				$time_end = microtime(true);
				$time = number_format(($time_end - $time_start)*1000,1);
	  
				if ($fp)
				{
					// fsockopen worked, service is online
					$status = $config['online'];
					$diagnostics = "$time ms";
					fclose($fp);
				}
				else if ($errno<0) { $diagnostics = "errno=$errno; Host unknown?"; }
				else { $diagnostics = $errstr; }
		}
		
		// output results
		if ($output)
		echo "<tr><td class='toprvni'>$description</td><td class=\"$status\">$status</td><td class='cas'>$diagnostics</td></tr>\n";
		$cache->flush();
	}
	
	
	// make progress indicator disappear by means of Javascript

	
}

/**
 * Class to wrap caching and simplifiy reuse
 */
class cache{

	/**
	 * @var string
	 * File to cache in
	 */
	private $file;

	/**
	 * @var string
	 * Time to keep cache
	 */
	private $time;

	/**
	 * @var int
	 * Timestamp of cache file. 
	 */
	private $filetime;
	
	/**
	 * @var string
	 * Buffer to store the output in for later caching so the page can be flushed.
	 */
	private $buffer='';
	
	/**
	 * @var bool
	 * If caching is enabled
	 */
	private $enabled=false;

	/**
	 * Constructor
	 * On new cache() run this
	 * @param string File to cache in
	 * @param array The config array
	 */
	public function __construct($file, $config){
		if($config['cachepath']!=null && $config['cachepath']!=false && $config['cachetime']>0){
			// Caching isn't disabled explicitly.  Continue
			$this->file=$config['cachepath'].'/'.$file;
			$this->time=$config['cachetime'];

			// If output_buffering isn't small the progress indicator won't function properly
			$output_buffering = ini_get("output_buffering");
			if($config['progressindicator']==TRUE && $output_buffering > 0){
				error_log("warning: progressindicator incompatible with php.ini output_buffering > 0. Caching disabled! Create a .htaccess with the contents: php_value output_buffering \"0\"");
				return;
			}
			if((file_exists($this->file) && is_writable($this->file)) || is_writable(dirname($this->file))){
					// We can wrte to the cache dirs enable caching.
					//   No sense caching if we can't write!
					$this->enabled=true;
			}
		}
	}
	
	/**
	 * Check if the file is cached and still valid
	 * @return bool
	 */
	private function isCached(){
		$this->filetime=@filemtime($this->file);
		if(file_exists($this->file) && (time() - $this->time <$this->filetime)){
			return true;
		}
		return false;
	}
	
	/**
	 * Caching Start function.
	 * If it finds the file is already cached it will return the cached file and 
	 * exit. Otherwise will ob_start()
	 */
	public function start(){
		if(!$this->enabled)return;
		if($this->isCached()){
			// Cache is good.  Return the file and exit!
			@include $this->file;
			echo "<!-- Cached ".date('jS F Y H:i', $this->filetime)."-->";
			exit;
		}
		// Need to create cache buffer output.
		ob_start();
	}
	
	/**
	 * Store the page to our internal buffer and send the current page contents out.
	 */
	public function flush(){
		if($this->enabled){
			// Store the contents
			$this->buffer.=ob_get_contents();
			// Flush contents of the buffer
			ob_flush();
		}
		// Send to browser
		flush();
	}
	
	/**
	 * Caching end function
	 * Writes the output to a file so it is cached for the next requests. 
	 */
	public function end(){
		if(!$this->enabled)return;
		if((file_exists($this->file) && is_writable($this->file)) || is_writable(dirname($this->file))){
			// We can write the cache lets get the buffer contents and write it. 
			$fp=fopen($this->file,'w');
			fwrite($fp, $this->buffer . ob_get_contents());
			fclose($fp);
			// Close the buffer and send the remaining contents to the browser
			ob_end_flush();
		}
	}
}




// ------------------------------------------------- controler part of script

// Get the default config
$config = defaultConfig();

// Check first for genconfig before we try to parseConfig
if($argv[1] == 'genconfig'){
	genConfig();
	exit;
}

// Parse the user's config
$config = parseConfig($config['configfile'], $config);


// Main Controler
if($_REQUEST['rss'] !== NULL or $argv[1] == 'rss'){
	// Run rss()
	// Create instance of cache class.  
	$cache=new cache('rss.xml',$config);
	// Start the caching engine
	$cache->start();
	// Do the actuall rss function
	rss();
	// End the rss engine
	$cache->end();
}else if($argv[1] == 'setstatus'){
	genStatusUpdate();
}else if($argv[1] == '-h' || $argv[1] == '--help'){
	echo <<<EOT
{$config['version']} Help
	rss - Output RSS
	setstatus - netstat.txt generation helper
	genconfig - generate sample netstat.conf.php
	
EOT;
}else{
	// Create instance of cache class.  
	$cache=new cache('index.html',$config);
	// Start the caching engine
	$cache->start();
	// Do the actuall html function
	html($cache);
	// End the rss engine
	$cache->end();
}


/*
 * License
 *
 * This script is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This script is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this script; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 * Boston, MA  02111-1307  USA
 
 * History
 *
 * 0.09 * 2009-10-26  first buggy "punish me" alpha release candidate
 * 0.10 * 2009-11-07  added stopwatch (time diagnostics) for online services
 * 0.11 * 2009-11-09  added RSS feed option for alerts
 * 0.12 * 2009-11-12  cleaned up and simplified settings mechanism
 * 0.13 * 2009-11-18  $alertfile is only included if larger than 2 bytes
 * 0.14 * 2009-12-05  Default CSS code change to improve font size scaling
 * 0.15 * 2012-08-04  added ping6 (suggested by Todd Johnson; thanks!)
 * 1.x  * 2012-..-..  New version by Todd Johnson w/ caching, setstatus, ...
 *
 */
 echo "</tbody></table><section></div>";
?>
