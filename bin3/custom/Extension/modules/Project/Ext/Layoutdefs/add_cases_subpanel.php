<?php
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