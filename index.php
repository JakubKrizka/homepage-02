<?php 
    include('01-head.html');
    include('02-header.html');
    $obsah = file_get_contents('pages/' . $_GET['page'] . '.html');
    if (!isset($_GET["page"])) {
    	$about = file_get_contents('pages/about.html');
        echo $about;    
    }else{  
        echo $obsah;
    }
    if ($_GET["page"] == 'info') {
    	include('pages/info.php');
    }
    include('03-footer.html');
?>
