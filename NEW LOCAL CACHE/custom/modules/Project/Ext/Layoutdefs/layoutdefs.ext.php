<?php 
 //WARNING: The contents of this file are auto-generated


$layout_defs['Project']['subpanel_setup']['cases_projects'] = array(
    'top_buttons' => array(
        array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'Cases'),
    ),
    'order' => 110,
    'module' => 'Cases',
    'sort_order' => 'desc',
    'sort_by' => 'case_number',
    'subpanel_name' => 'Project_subpanel_cases',
    'get_subpanel_data' => 'cases_projects',
    'add_subpanel_data' => 'case_id',
    'title_key' => 'LBL_CASES_SUBPANEL_TITLE',
);

$layout_defs['Project']['subpanel_setup']['cases'] = array();

$layout_defs["Project"]["subpanel_setup"]['quotes_relate_one_to_many'] = array(
    'order' => 100,
    'module' => 'AOS_Quotes',
    'subpanel_name' => 'Project_subpanel_quotes',
    'sort_order' => 'asc',
    'sort_by' => 'id',
    'title_key' => 'LBL_AOS_QUOTES_PROJECT_SUBPANEL_TITLE',
//    'get_subpanel_data' => 'quotes_relate_one_to_many',
    'get_subpanel_data' => 'function:getSubpanelQueryParts',
    'generate_select' => true,
    'function_parameters' => array(
        // File where the above function is defined at
        'import_function_file' => 'custom/Extension/application/Ext/Utils/custom_utils.php',
    ),
);

$layout_defs['Project']['subpanel_setup']['aos_quotes_project'] = array();


$layout_defs["Project"]["subpanel_setup"]['related_contracts'] = array(
    'module' => 'AOS_Contracts',
    'subpanel_name' => 'contracts_project_subpanel',
    'sort_order' => 'asc',
    'sort_by' => 'id',
    'title_key' => 'LBL_CONTRACTS_PROJECT_SUB_PANEL',
    'get_subpanel_data' => 'related_contracts',
    'top_buttons' =>
    array(
        0 =>
        array(
            'widget_class' => 'SubPanelTopButtonQuickCreate',
        ),
        1 =>
        array(
            'widget_class' => 'SubPanelTopSelectButton',
            'mode' => 'MultiSelect',
        ),
    ),
);


$layout_defs["Project"]["subpanel_setup"]['related_documents'] = array(
    'module' => 'Documents',
    'subpanel_name' => 'documents_project_subpanel',
    'sort_order' => 'asc',
    'sort_by' => 'id',
    'title_key' => 'LBL_DOCUMENTS_PROJECT_SUB_PANEL',
    'get_subpanel_data' => 'related_documents',
    'top_buttons' =>
    array(
        0 =>
        array(
            'widget_class' => 'SubPanelTopButtonQuickCreate',
        ),
        1 =>
        array(
            'widget_class' => 'SubPanelTopSelectButton',
            'mode' => 'MultiSelect',
        ),
    ),
);


$layout_defs["Project"]["subpanel_setup"]['sub_projects'] = array(
    'module' => 'Project',
    'subpanel_name' => 'sub_project_subpanel',
    'sort_order' => 'asc',
    'sort_by' => 'id',
    'title_key' => 'LBL_SUB_PROJECTS_SUB_PANEL',
    'get_subpanel_data' => 'sub_projects',
    'top_buttons' =>
    array(
        0 =>
        array(
            'widget_class' => 'SubPanelTopButtonQuickCreate',
        ),
        1 =>
        array(
            'widget_class' => 'SubPanelTopSelectButtonCustom',
            'mode' => 'MultiSelect',
        ),
    ),
);


//auto-generated file DO NOT EDIT
$layout_defs['Project']['subpanel_setup']['projecttask']['override_subpanel_name'] = 'Project_subpanel_projecttask';


$layout_defs['Project']['subpanel_setup']['accounts'] = array();

$layout_defs['Project']['subpanel_setup']['related_contracts']['order'] = 2;
$layout_defs['Project']['subpanel_setup']['projecttask']['order'] = 3;
$layout_defs['Project']['subpanel_setup']['related_documents']['order'] = 4;
$layout_defs['Project']['subpanel_setup']['cases_projects']['order'] = 5;
$layout_defs['Project']['subpanel_setup']['quotes_relate_one_to_many']['order'] = 6;

$layout_defs['Project']['subpanel_setup']['aos_quotes_project']['override_subpanel_name'] = 'Project_subpanel_quotes';

?>