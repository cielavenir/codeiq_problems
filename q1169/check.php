#!/usr/bin/php
<?php
	if($argc<2){
		echo 'check.php program'.PHP_EOL;
		exit(1);
	}
	$str=file_get_contents($argv[1]);
	if(htmlspecialchars($str,ENT_QUOTES)==$str){
		echo 'program is valid'.PHP_EOL;
		exit(0);
	}else{
		echo 'program is invalid'.PHP_EOL;
		exit(1);
	}
?>