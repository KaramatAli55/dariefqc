<?php 
 //WARNING: The contents of this file are auto-generated


$dictionary['ProjectTask']['fields']['related_documents'] = array(
    'name' => 'related_documents',
    'type' => 'link',
    'relationship' => 'documents_projecttask',
    'module' => 'Documents',
    'bean_name' => 'Documents',
    'source' => 'non-db',
    'vname' => 'LBL_DOCUMENTS_PROJECTTASK_LINK',
);

$dictionary['ProjectTask']['fields']['file_mime_type'] = array(
    'name' => 'file_mime_type',
    'vname' => 'LBL_FILE_MIME_TYPE',
    'type' => 'varchar',
    'len' => '100',
    'importable' => false,
);
$dictionary['ProjectTask']['fields']['file_url'] = array(
    'name' => 'file_url',
    'vname' => 'LBL_FILE_URL',
    'type' => 'function',
    'function_class' => 'UploadFile',
    'function_name' => 'get_upload_url',
    'function_params' => array('$this'),
    'source' => 'function',
    'reportable' => false,
    'importable' => false,
);
$dictionary['ProjectTask']['fields']['filename'] = array(
    'name' => 'filename',
    'vname' => 'LBL_FILENAME',
    'type' => 'file',
    'dbType' => 'varchar',
    'len' => '255',
    'reportable' => true,
    'importable' => false,
);


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

?>