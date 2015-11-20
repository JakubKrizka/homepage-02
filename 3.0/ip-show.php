<?php
  /* PDO is a extension which defines a lightweight, consistent interface for accessing databases in PHP.
  $db=new PDO('mysql:dbname=jakubkrizkacz1;host=127.0.0.1;','jakubkrizka.cz','tnqBY26Y');
  $db->exec("set names utf8");
  // prepare the query for analyzing, prepared statements use less resources and run faster
  $row=$db->prepare('SELECT * FROM ip_home order by id desc limit 3');
  // execute the query
  $row->execute();

  /* foreach loop
  foreach($row as $rec) {
    // send customer info
    echo '<b>' . $t2 . '</b> ' . '<a href="http://' . $rec['ip_address'] . '">' . $rec['ip_address'] . '</a>' . ' <i>(' . $rec['id'] . ')</i>';
    echo '<hr>';
  }
  */

  $id_spojeni = mysql_connect("127.0.0.1","jakubkrizka.cz","tnqBY26Y");
  
  // select database 
  // výběr databáze
  $vysledek_vybrani = mysql_select_db("jakubkrizkacz1",$id_spojeni);
  
  // send request to mysql !!! this is unsecure solution, injection isn't resolved !!!
  // odeslání požadavku na databázový server, kde se hledá v tabulce "users" uživatel jako "id"
  // POZOR !!! není vyřešena bezpečnost
   $result = mysql_query('SELECT * FROM ip_home order by id desc limit 1');

    $row = mysql_fetch_row($result);
	$ip_address = $row[1];
    echo $ip_address;
?>



