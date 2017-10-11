
<?php
$relate_field_id = 'relate_account_id';
$relate_field_name = 'relate_account_name';
$dictionary['Project']['fields'][$relate_field_id] = array(
    'name' => $relate_field_id,
    'rname' => 'id',
    'id_name' => $relate_field_id,
    'vname' => 'LBL_ACCOUNTS_ID',
    'type' => 'id',
    'table' => 'accounts',
    'isnull' => 'false',
    'group' => $relate_field_name,
    'dbType' => 'id',
    'reportable' => true,
);
$dictionary['Project']['fields'][$relate_field_name] = array(
    'name' => $relate_field_name,
    'vname' => 'LBL_ACCOUNT_NAME_SINGULAR',
    'type' => 'relate',
    'reportable' => false,
    'source' => 'non-db',
    'rname' => 'name',
    'table' => 'accounts',
    'id_name' => $relate_field_id,
    'module' => 'Accounts',
    'link' => 'accounts_relate_one_to_many',
    'duplicate_merge' => 'disabled',
);
$dictionary['Project']['fields']['accounts_relate_one_to_many'] = array(
    'name' => 'accounts_relate_one_to_many',
    'vname' => 'LBL_ACCOUNTS_LINKFIELD',
    'type' => 'link',
    'source' => 'non-db',
    'relationship' => 'projects_account_one_to_many',
);

?>