
<?php
$relate_field_id = 'relate_project_id';
$relate_field_name = 'relate_project_name';
$dictionary['AOS_Quotes']['fields'][$relate_field_id] = array(
    'name' => $relate_field_id,
    'rname' => 'id',
    'id_name' => $relate_field_id,
    'vname' => 'LBL_PROJECT_ID',
    'type' => 'id',
    'table' => 'project',
    'isnull' => 'false',
    'group' => $relate_field_name,
    'dbType' => 'id',
    'reportable' => true,
);
$dictionary['AOS_Quotes']['fields'][$relate_field_name] = array(
    'name' => $relate_field_name,
    'vname' => 'LBL_PROJECT_NAME',
    'type' => 'relate',
    'reportable' => false,
    'source' => 'non-db',
    'rname' => 'name',
    'table' => 'project',
    'id_name' => $relate_field_id,
    'module' => 'Project',
    'link' => 'project_relate_one_to_many',
    'duplicate_merge' => 'disabled',
    'required' => false,
);
$dictionary['AOS_Quotes']['fields']['project_relate_one_to_many'] = array(
    'name' => 'project_relate_one_to_many',
    'vname' => 'LBL_PROJECT_LINKFIELD',
    'type' => 'link',
    'source' => 'non-db',
    'relationship' => 'aos_quotes_project_one_to_many',
);

?>