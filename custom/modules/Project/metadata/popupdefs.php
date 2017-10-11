<?php
if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

$whereStatement = showProjectsPopupWithoutParent($_REQUEST);

$popupMeta = array('moduleMain' => 'Project',
    'varName' => 'PROJECT',
    'orderBy' => 'name',
    'whereStatement' => $whereStatement,
    'whereClauses' =>
    array('name' => 'project.name'),
    'searchInputs' =>
    array('name')
);

?>
 
