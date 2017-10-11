<?php
if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

$whereStatement = showProjectTaskPopupWithoutParent($_REQUEST);
$popupMeta = array('moduleMain' => 'ProjectTask',
    'varName' => 'PROJECT_TASK',
    'orderBy' => 'name',
    'whereStatement' => $whereStatement,
    'whereClauses' =>
    array('name' => 'project_task.name'),
    'searchInputs' =>
    array('name')
);

?>
 
