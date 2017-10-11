<?php
$dictionary['Document']['fields']['related_project_name'] = array(
    'name' => 'related_project_name',
    'id_name' => 'related_project_id',
    'vname' => 'LBL_PROJECT_NAME',
    'type' => 'relate',
    'rname' => 'name',
    'isnull' => 'true',
    'module' => 'Project',
    'table' => 'project',
    'massupdate' => false,
    'source' => 'non-db',
    'len' => 36,
    'link' => 'related_project',
    'unified_search' => true,
    'importable' => 'true',
);

$dictionary['Document']['fields']['related_project_id'] = array(
    'name' => 'related_project_id',
    'vname' => 'LBL_PROJECT_ID',
    'rname' => 'id',
    'type' => 'id',
    'module' => 'Project',
    'table' => 'project',
    'dbType' => 'id',
    'required' => false,
    'reportable' => false,
    'audited' => true,
    'comment' => 'Id of related project',
);
$dictionary['Document']['fields']['related_project'] = array(
    'name' => 'related_project',
    'type' => 'link',
    'relationship' => 'documents_projects',
    'module' => 'Project',
    'bean_name' => 'Project',
    'source' => 'non-db',
    'vname' => 'LBL_DOCUMENTS_PROJECT_LINK',
);
$dictionary['Document']['relationships']['documents_projects'] = array(
    'lhs_module' => 'Project',
    'lhs_table' => 'project',
    'lhs_key' => 'id',
    'rhs_module' => 'Documents',
    'rhs_table' => 'documents',
    'rhs_key' => 'related_project_id',
    'relationship_type' => 'one-to-many',
);
