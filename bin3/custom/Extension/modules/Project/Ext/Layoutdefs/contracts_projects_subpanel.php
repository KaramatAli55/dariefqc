<?php
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
