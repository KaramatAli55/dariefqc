<?php 
 //WARNING: The contents of this file are auto-generated


$layout_defs["ProjectTask"]["subpanel_setup"]['related_documents'] = array(
    'module' => 'Documents',
    'subpanel_name' => 'documents_project_subpanel',
    'sort_order' => 'asc',
    'sort_by' => 'id',
    'title_key' => 'LBL_DOCUMENTS',
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

?>