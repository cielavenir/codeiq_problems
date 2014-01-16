#!/usr/bin/env php
<?php
$T=array('C','Cs','D','Ds','E','F','Fs','G','Gs','A','As','B');
$KEY=array(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE);
$t=intval(fgets(STDIN));
for(;$t--;){
	$n=intval(fgets(STDIN));
	$s=array_map(function($e){global $T;return array_search($e,$T);},explode(' ',trim(fgets(STDIN))));
	$h=array();
	foreach($s as $e)$h[$e]=1;
	$r=array();
	for($i=0;$i<12;$i++){
		for($j=0;$j<12;$j++){
			if(!$KEY[$j%12]&&array_key_exists(($i+$j)%12,$h))break;
		}
		if($j==12)$r[]=$T[$i];
	}
	if(empty($r))echo "invalid".PHP_EOL;
	else echo implode(' ',$r).PHP_EOL;
}
?>