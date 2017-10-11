<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2017-02-26 18:59:20
$dictionary['Project']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 

 // created: 2017-02-26 18:59:20
$dictionary['Project']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

 // created: 2017-02-26 18:59:20
$dictionary['Project']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2017-06-14 23:49:25
$dictionary['Project']['fields']['jjwg_maps_address_c']['inline_edit']='1';
$dictionary['Project']['fields']['jjwg_maps_address_c']['labelValue']='Address';

 

 // created: 2017-03-31 23:24:23
$dictionary['Project']['fields']['name']['inline_edit']=true;
$dictionary['Project']['fields']['name']['comments']='Project ID';
$dictionary['Project']['fields']['name']['merge_filter']='disabled';
$dictionary['Project']['fields']['name']['unified_search']=false;
$dictionary['Project']['fields']['name']['len']='4';
$dictionary['Project']['fields']['name']['full_text_search']=array (
);

 

 // created: 2017-03-31 23:24:45
$dictionary['Project']['fields']['description']['required']=true;
$dictionary['Project']['fields']['description']['inline_edit']=true;
$dictionary['Project']['fields']['description']['comments']='Project Name';
$dictionary['Project']['fields']['description']['merge_filter']='disabled';
$dictionary['Project']['fields']['description']['rows']='1';
$dictionary['Project']['fields']['description']['cols']='20';

 

 // created: 2017-06-14 23:45:44
$dictionary['Project']['fields']['scope_of_work_c']['inline_edit']='1';
$dictionary['Project']['fields']['scope_of_work_c']['labelValue']='Scope of Work';

 

 // created: 2017-06-14 23:49:02
$dictionary['Project']['fields']['estimated_end_date']['required']=false;
$dictionary['Project']['fields']['estimated_end_date']['inline_edit']=true;
$dictionary['Project']['fields']['estimated_end_date']['merge_filter']='disabled';

 


$dictionary['Project']['fields']['cases_projects'] = array(
    'name' => 'cases_projects',
    'type' => 'link',
    'relationship' => 'cases_projects',
    'module' => 'Cases',
    'bean_name' => 'Case',
    'source' => 'non-db',
    'side' => 'right',
    'vname' => 'LBL_CASES',
);

$dictionary['Project']['fields']['quotes_relate_one_to_many'] = array(
    'name' => 'quotes_relate_one_to_many',
    'vname' => 'LBL_AOS_QUOTES_PROJECT',
    'type' => 'link',
    'source' => 'non-db',
    'relationship' => 'aos_quotes_project_one_to_many',
    'Comment' => 'Relationship link field',
);



$dictionary['Project']['fields']['related_contracts'] = array(
    'name' => 'related_contracts',
    'type' => 'link',
    'relationship' => 'contracts_projects',
    'module' => 'AOS_Contracts',
    'bean_name' => 'AOS_Contracts',
    'source' => 'non-db',
    'vname' => 'LBL_CONTRACTS_PROJECT_LINK',
);


$dictionary['Project']['fields']['related_documents'] = array(
    'name' => 'related_documents',
    'type' => 'link',
    'relationship' => 'documents_projects',
    'module' => 'Documents',
    'bean_name' => 'Documents',
    'source' => 'non-db',
    'vname' => 'LBL_DOCUMENTS_PROJECT_LINK',
);


$dictionary['Project']['fields']['requires_permit'] = array(
    'name' => 'requires_permit',
    'type' => 'enum',
    'vname' => 'LBL_REQUIRES_PERMIT',
    'required' => false,
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => true,
    'reportable' => true,
    'len' => 100,
    'options' => 'requires_permit_list',
    'studio' => 'visible',
);

$dictionary['Project']['fields']['permit_value'] = array(
    'name' => 'permit_value',
    'type' => 'varchar',
    'vname' => 'LBL_PERMIT_VALUE',
    'massupdate' => 0,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => 1,
    'reportable' => true,
    'len' => '50'
);



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


 // created: 2017-07-25 12:56:14
$dictionary['Project']['fields']['type_c']['inline_edit']='1';
$dictionary['Project']['fields']['type_c']['labelValue']='Type (Project Template)';

 
?>