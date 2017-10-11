<?php
// created: 2017-06-15 15:27:40
$subpanel_layout['list_fields'] = array (
  'project_task_id' => 
  array (
    'type' => 'int',
    'vname' => 'LBL_PROJECT_TASK_ID',
    'width' => '5%',
    'default' => true,
  ),
  'name' => 
  array (
    'vname' => 'LBL_LIST_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '60%',
    'default' => true,
  ),
  'assigned_user_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_ASSIGNED_USER_NAME',
    'id' => 'ASSIGNED_USER_ID',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Users',
    'target_record_key' => 'assigned_user_id',
  ),
  'date_start' => 
  array (
    'vname' => 'LBL_DATE_START',
    'width' => '10%',
    'default' => true,
  ),
  'date_finish' => 
  array (
    'vname' => 'LBL_DATE_FINISH',
    'width' => '10%',
    'default' => true,
  ),
  'percent_complete' => 
  array (
    'type' => 'int',
    'vname' => 'LBL_PERCENT_COMPLETE',
    'width' => '5%',
    'default' => true,
  ),
  'actual_effort' => 
  array (
    'vname' => 'LBL_TOTAL_HOURS',
    'width' => '15%',
    'default' => true,
  ),
);