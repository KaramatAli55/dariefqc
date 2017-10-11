<?php
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
