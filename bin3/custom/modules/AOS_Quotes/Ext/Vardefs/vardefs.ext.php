<?php 
 //WARNING: The contents of this file are auto-generated



$dictionary['AOS_Quotes']['fields']['pst_tax_amount'] =
    array (
        'required' => false,
        'name' => 'pst_tax_amount',
        'vname' => 'LBL_PST_TAX_AMOUNT',
        'type' => 'currency',
        'massupdate' => 0,
        'comments' => '',
        'help' => '',
        'importable' => 'true',
        'duplicate_merge' => 'disabled',
        'duplicate_merge_dom_value' => '0',
        'audited' => 1,
        'reportable' => true,
        'len' => '26,6',
    );


$dictionary['AOS_Quotes']['fields']['line_items']['function'] = array (
    'name' => 'custom_display_lines',
    'returns' => 'html',
    'include' => 'custom/modules/AOS_Products_Quotes/Line_Items.php',
);


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



$dictionary['AOS_Quotes']['fields']['opportunity']['required'] = false;


$dictionary['AOS_Quotes']['fields']['opportunity_or_project'] = array(
    'name' => 'opportunity_or_project',
    'vname' => 'LBL_OPPORTUNITY_OR_PROJECT',
    'type' => 'enum',
    'options' => 'opportunity_or_project_list',
    'massupdate' => 0,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => 1,
    'reportable' => true,
    'required' => false,
);

?>