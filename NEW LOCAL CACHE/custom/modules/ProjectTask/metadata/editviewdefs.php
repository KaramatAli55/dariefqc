<?php
$viewdefs ['ProjectTask'] = array(
    'EditView' =>
    array(
        'templateMeta' =>
        array(
            'form' => array(
                'enctype' => 'multipart/form-data',
            ),
            'maxColumns' => '2',
            'widths' =>
            array(
                0 =>
                array(
                    'label' => '10',
                    'field' => '30',
                ),
                1 =>
                array(
                    'label' => '10',
                    'field' => '30',
                ),
            ),
            'includes' =>
            array(
                0 =>
                array(
                    'file' => 'modules/ProjectTask/ProjectTask.js',
                    'file' => 'custom/modules/ProjectTask/remove_attachment.js',
                ),
            ),
            'useTabs' => false,
            'tabDefs' =>
            array(
                'DEFAULT' =>
                array(
                    'newTab' => false,
                    'panelDefault' => 'expanded',
                ),
                'LBL_PANEL_TIMELINE' =>
                array(
                    'newTab' => false,
                    'panelDefault' => 'expanded',
                ),
            ),
            'syncDetailEditViews' => false,
        ),
        'panels' =>
        array(
            'default' =>
            array(
                0 =>
                array(
                    0 =>
                    array(
                        'name' => 'name',
                        'label' => 'LBL_NAME',
                    ),
                    1 =>
                    array(
                        'name' => 'status',
                        'customCode' => '<select name="{$fields.status.name}" id="{$fields.status.name}" title="" tabindex="s" onchange="update_percent_complete(this.value);">{if isset($fields.status.value) && $fields.status.value != ""}{html_options options=$fields.status.options selected=$fields.status.value}{else}{html_options options=$fields.status.options selected=$fields.status.default}{/if}</select>',
                    ),
                ),
                1 =>
                array(
                    0 =>
                    array(
                        'name' => 'date_start',
                    ),
                    1 =>
                    array(
                        'name' => 'date_finish',
                    ),
                ),
                2 =>
                array(
                    0 => 'priority',
                    1 =>
                    array(
                        'name' => 'percent_complete',
                        'customCode' => '<input type="text" name="{$fields.percent_complete.name}" id="{$fields.percent_complete.name}" size="30" value="{$fields.percent_complete.value}" title="" tabindex="0" onChange="update_status(this.value);" /></tr>',
                    ),
                ),
                3 =>
                array(
                    0 =>
                    array(
                        'name' => 'project_name',
                        'label' => 'LBL_PROJECT_NAME',
                    ),
                    1 =>
                    array(
                        'name' => 'project_task_id',
                        'label' => 'LBL_PROJECT_TASK_ID',
                    ),
                ),
                4 =>
                array(
                    0 => 'assigned_user_name',
                    1 => 'projecttask_parent_name',
                ),
                5 =>
                array(
                    0 =>
                    array(
                        'name' => 'description',
                    ),
                ),
                6 =>
                array(
                    0 =>
                    array(
                        'name' => 'filename',
                        'label' => 'LBL_FILENAME',
                    ),
                    1 => '',
                ),
            ),
            'LBL_PANEL_TIMELINE' =>
            array(
                0 =>
                array(
                    0 => 'estimated_effort',
                    1 =>
                    array(
                        'name' => 'actual_effort',
                        'label' => 'LBL_ACTUAL_EFFORT',
                    ),
                ),
                1 =>
                array(
                    0 =>
                    array(
                        'name' => 'relationship_type',
                        'studio' => 'visible',
                        'label' => 'LBL_RELATIONSHIP_TYPE',
                    ),
                    1 => 'utilization',
                ),
                2 =>
                array(
                    0 => 'order_number',
                    1 => 'milestone_flag',
                ),
            ),
        ),
    ),
);

?>
