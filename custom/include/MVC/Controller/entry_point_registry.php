<?php
if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

$entry_point_registry['download'] = array(
    'file' => 'custom/download.php',
    'auth' => true,
);
