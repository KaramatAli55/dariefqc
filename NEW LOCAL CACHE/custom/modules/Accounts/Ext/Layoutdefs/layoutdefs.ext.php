<?php 
 //WARNING: The contents of this file are auto-generated


$layout_defs["Accounts"]["subpanel_setup"]['project_relate_one_to_many'] = array(
    'order' => 100,
    'module' => 'Project',
    'subpanel_name' => 'sub_project_subpanel',
    'sort_order' => 'asc',
    'sort_by' => 'id',
    'title_key' => 'LBL_PROJECTS_ACCOUNT_SUBPANEL_TITLE',
    'get_subpanel_data' => 'project_relate_one_to_many',
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

$layout_defs['Accounts']['subpanel_setup']['project'] = array();
?>