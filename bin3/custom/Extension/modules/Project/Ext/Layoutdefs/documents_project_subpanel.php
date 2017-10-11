<?php
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