<?php
$dictionary['ProjectTask']['fields']['projecttask_parent_name'] = array(
    'name' => 'projecttask_parent_name',
    'id_name' => 'projecttask_parent_id',
    'vname' => 'LBL_SUB_PROJECTTASK_NAME',
    'type' => 'relate',
    'isnull' => 'true',
    'module' => 'ProjectTask',
    'table' => 'project_task',
    'massupdate' => false,
    'source' => 'non-db',
    'len' => 36,
    'link' => 'parent_projecttasks',
    'unified_search' => true,
    'importable' => 'true',
);
$dictionary['ProjectTask']['fields']['projecttask_parent_id'] = array(
    'name' => 'projecttask_parent_id',
    'vname' => 'LBL_SUB_PROJECTTASKS_ID',
    'type' => 'id',
    'module' => 'ProjectTask',
    'dbType' => 'id',
    'required' => false,
    'reportable' => false,
    'audited' => true,
    'comment' => 'ProjectTask ID of the parent',
);
$dictionary['ProjectTask']['fields']['sub_projecttasks'] = array(
    'name' => 'sub_projecttasks',
    'type' => 'link',
    'relationship' => 'sub_projecttask_relationship',
    'module' => 'ProjectTask',
    'bean_name' => 'ProjectTask',
    'source' => 'non-db',
    'vname' => 'LBL_SUB_PROJECTTASK',
    'link_type' => 'many',
    'side' => 'left',
);
$dictionary['ProjectTask']['fields']['parent_projecttasks'] = array(
    'name' => 'parent_projecttasks',
    'type' => 'link',
    'relationship' => 'sub_projecttask_relationship',
    'module' => 'ProjectTask',
    'bean_name' => 'ProjectTask',
    'source' => 'non-db',
    'link_type' => 'one',
    'vname' => 'LBL_SUB_PROJECTTASK_LINK',
    'side' => 'right',
);

$dictionary['ProjectTask']['relationships']['sub_projecttask_relationship'] = array(
    'lhs_module' => 'ProjectTask',
    'lhs_table' => 'project_task',
    'lhs_key' => 'id',
    'rhs_module' => 'ProjectTask',
    'rhs_table' => 'project_task',
    'rhs_key' => 'projecttask_parent_id',
    'relationship_type' => 'one-to-many',
);
