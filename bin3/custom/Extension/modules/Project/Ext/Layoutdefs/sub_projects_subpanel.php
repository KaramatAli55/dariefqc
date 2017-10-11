<?php
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
