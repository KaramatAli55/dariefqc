<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2017-02-26 18:59:20
$dictionary['Case']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 

 // created: 2017-02-26 18:59:20
$dictionary['Case']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

 // created: 2017-02-26 18:59:20
$dictionary['Case']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2017-02-26 18:59:20
$dictionary['Case']['fields']['jjwg_maps_address_c']['inline_edit']=1;

 

 // created: 2017-02-27 16:20:35
$dictionary['Case']['fields']['case_time_c']['inline_edit']='1';
$dictionary['Case']['fields']['case_time_c']['labelValue']='Hours:';

 

 // created: 2017-02-27 16:31:22
$dictionary['Case']['fields']['completed_date_c']['inline_edit']='1';
$dictionary['Case']['fields']['completed_date_c']['labelValue']='Completed:';

 

 // created: 2017-02-27 16:34:43
$dictionary['Case']['fields']['case_location_c']['inline_edit']='1';
$dictionary['Case']['fields']['case_location_c']['labelValue']='Service Location:';

 

 // created: 2017-02-27 16:38:14
$dictionary['Case']['fields']['case_materials_c']['inline_edit']='1';
$dictionary['Case']['fields']['case_materials_c']['labelValue']='Materials:';

 

 // created: 2017-06-04 20:23:03
$dictionary['Case']['fields']['state']['default']='regularhourly';
$dictionary['Case']['fields']['state']['required']=false;
$dictionary['Case']['fields']['state']['inline_edit']=true;
$dictionary['Case']['fields']['state']['comments']='';

 

 // created: 2017-06-04 20:09:43
$dictionary['Case']['fields']['work_log']['inline_edit']=true;
$dictionary['Case']['fields']['work_log']['comments']='Describe detailed instructions for tech who will be performing work';
$dictionary['Case']['fields']['work_log']['merge_filter']='disabled';
$dictionary['Case']['fields']['work_log']['rows']='10';
$dictionary['Case']['fields']['work_log']['cols']='80';

 

 // created: 2017-06-04 20:13:31
$dictionary['Case']['fields']['referencenum_c']['inline_edit']='1';
$dictionary['Case']['fields']['referencenum_c']['labelValue']='Customer Reference #:';

 

 // created: 2017-06-04 20:27:16
$dictionary['Case']['fields']['type']['default']='cabling';
$dictionary['Case']['fields']['type']['len']=100;
$dictionary['Case']['fields']['type']['inline_edit']=true;
$dictionary['Case']['fields']['type']['comments']='The type of issue (ex: issue, feature)';
$dictionary['Case']['fields']['type']['merge_filter']='disabled';

 

 // created: 2017-06-04 20:28:58
$dictionary['Case']['fields']['site_contact_c']['inline_edit']='1';
$dictionary['Case']['fields']['site_contact_c']['labelValue']='Site Contact:';

 

 // created: 2017-06-04 20:33:24
$dictionary['Case']['fields']['case_status_c']['inline_edit']='1';
$dictionary['Case']['fields']['case_status_c']['labelValue']='Case Status:';

 


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



$dictionary['Case']['fields']['site_contact_name'] = array(
    'required'  => false,
    'source'    => 'non-db',
    'name'      => 'site_contact_name',
    'vname'     => 'LBL_SITE_CONTACT_NAME',
    'type'      => 'relate',
    'rname'     => 'name',
    'id_name'   => 'site_contact_id',
    'join_name' => 'contacts',
    'link'      => 'contacts',
    'table'     => 'contacts',
    'isnull'    => 'true',
    'module'    => 'Contacts',
);

$dictionary['Case']['fields']['site_contact_id'] = array(
    'name'              => 'site_contact_id',
    'rname'             => 'id',
    'vname'             => 'LBL_SITE_CONTACT_ID',
    'type'              => 'id',
    'table'             => 'contacts',
    'isnull'            => 'true',
    'module'            => 'Contacts',
    'dbType'            => 'id',
    'reportable'        => false,
    'massupdate'        => false,
    'duplicate_merge'   => 'disabled',
);

?>