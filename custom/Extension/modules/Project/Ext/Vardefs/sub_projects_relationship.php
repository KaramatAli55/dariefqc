<?php
$dictionary['Project']['fields']['project_parent_id'] = array(
    'name' => 'project_parent_id',
    'vname' => 'LBL_SUB_PROJECTS',
    'type' => 'id',
    'module' => 'Project',
    'dbType' => 'id',
    'required' => false,
    'reportable' => false,
    'audited' => true,
    'comment' => 'Project ID of the parent of this Project',
);
$dictionary['Project']['fields']['project_parent_name'] = array(
    'name' => 'project_parent_name',
    'id_name' => 'project_parent_id',
    'vname' => 'LBL_SUB_PROJECTS',
    'type' => 'relate',
    'isnull' => 'true',
    'module' => 'Project',
    'table' => 'project',
    'massupdate' => false,
    'source' => 'non-db',
    'len' => 36,
    'link' => 'parent_project',
    'unified_search' => true,
    'importable' => 'true',
);
$dictionary['Project']['fields']['sub_projects'] = array(
    'name' => 'sub_projects',
    'type' => 'link',
    'relationship' => 'sub_projects_relationship',
    'module' => 'Project',
    'bean_name' => 'Project',
    'source' => 'non-db',
    'vname' => 'LBL_SUB_PROJECTS',
    'link_type' => 'many',
    'side' => 'left',
);
$dictionary['Project']['fields']['parent_project'] = array(
    'name' => 'parent_project',
    'type' => 'link',
    'relationship' => 'sub_projects_relationship',
    'module' => 'Project',
    'bean_name' => 'Project',
    'source' => 'non-db',
    'link_type' => 'one',
    'vname' => 'LBL_SUB_PROJECTS',
    'side' => 'right',
);

$dictionary['Project']['relationships']['sub_projects_relationship'] = array(
    'lhs_module' => 'Project',
    'lhs_table' => 'project',
    'lhs_key' => 'id',
    'rhs_module' => 'Project',
    'rhs_table' => 'project',
    'rhs_key' => 'project_parent_id',
    'relationship_type' => 'one-to-many',
);
