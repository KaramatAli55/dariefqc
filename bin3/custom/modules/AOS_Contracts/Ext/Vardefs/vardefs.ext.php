<?php 
 //WARNING: The contents of this file are auto-generated


$dictionary['AOS_Contracts']['fields']['file_mime_type'] = array(
  'name' => 'file_mime_type',
  'vname' => 'LBL_FILE_MIME_TYPE',
  'type' => 'varchar',
  'len' => '100',
  'importable' => false,
);
$dictionary['AOS_Contracts']['fields']['file_url'] = array(
  'name'=>'file_url',
  'vname' => 'LBL_FILE_URL',
  'type'=>'function',
  'function_class'=>'UploadFile',
  'function_name'=>'get_upload_url',
  'function_params'=> array('$this'),
  'source'=>'function',
  'reportable'=>false,
  'importable' => false,
);
$dictionary['AOS_Contracts']['fields']['filename'] = array(
  'name' => 'filename',
  'vname' => 'LBL_FILENAME',
  'type' => 'file',
  'dbType' => 'varchar',
  'len' => '255',
  'reportable'=>true,
  'importable' => false,
);

$dictionary['AOS_Contracts']['fields']['related_project_name'] = array(
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

$dictionary['AOS_Contracts']['fields']['related_project_id'] = array(
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
$dictionary['AOS_Contracts']['fields']['related_project'] = array(
    'name' => 'related_project',
    'type' => 'link',
    'relationship' => 'contracts_projects',
    'module' => 'Project',
    'bean_name' => 'Project',
    'source' => 'non-db',
    'vname' => 'LBL_CONTRACTS_PROJECT_LINK',
);
$dictionary['AOS_Contracts']['relationships']['contracts_projects'] = array(
    'lhs_module' => 'Project',
    'lhs_table' => 'project',
    'lhs_key' => 'id',
    'rhs_module' => 'AOS_Contracts',
    'rhs_table' => 'aos_contracts',
    'rhs_key' => 'related_project_id',
    'relationship_type' => 'one-to-many',
);


$dictionary['AOS_Contracts']['fields']['purchase_order_number'] = array(
    'name' => 'purchase_order_number',
    'vname' => 'LBL_PURCHASE_ORDER_NUMBER',
    'type' => 'varchar',
    'required' => false,
    'reportable' => false,
    'audited' => true,
    'comment' => 'purchsase order number of contract',
);
?>