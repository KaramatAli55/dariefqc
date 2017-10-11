<?php

$layout_defs["ProjectTask"]["subpanel_setup"]['sub_projecttasks'] = array(
    'module' => 'ProjectTask',
    'subpanel_name' => 'default',
    'sort_order' => 'asc',
    'sort_by' => 'id',
    'title_key' => 'LBL_SUB_PROJECTTASK_SUB_PANEL',
    'get_subpanel_data' => 'sub_projecttasks',
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
