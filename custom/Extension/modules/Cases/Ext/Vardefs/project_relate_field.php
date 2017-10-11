<?php

$dictionary['Case']['fields']['project_name'] = array(
    'required'  => false,
    'source'    => 'non-db',
    'name'      => 'project_name',
    'vname'     => 'LBL_PROJECT_NAME',
    'type'      => 'relate',
    'rname'     => 'name',
    'id_name'   => 'project_id',
    'join_name' => 'project',
    'link'      => 'projects',
    'table'     => 'project',
    'isnull'    => 'true',
    'module'    => 'Project',
);

$dictionary['Case']['fields']['project_id'] = array(
    'name'              => 'project_id',
    'rname'             => 'id',
    'vname'             => 'LBL_PROJECT_ID',
    'type'              => 'id',
    'table'             => 'project',
    'isnull'            => 'true',
    'module'            => 'Project',
    'dbType'            => 'id',
    'reportable'        => false,
    'massupdate'        => false,
    'duplicate_merge'   => 'disabled',
);

$dictionary['Case']['fields']['cases_projects'] = array(
    'name'          => 'cases_projects',
    'type'          => 'link',
    'relationship'  => 'cases_projects',
    'module'        => 'Project',
    'bean_name'     => 'Project',
    'source'        => 'non-db',
    'vname'         => 'LBL_PROJECTS',
);
$dictionary['Case']['relationships']['cases_projects'] = array(
    'lhs_module'		=> 'Project',
    'lhs_table'			=> 'project',
    'lhs_key'			=> 'id',
    'rhs_module'		=> 'Cases',
    'rhs_table'			=> 'cases',
    'rhs_key'			=> 'project_id',
    'relationship_type'	=> 'one-to-many',
);
