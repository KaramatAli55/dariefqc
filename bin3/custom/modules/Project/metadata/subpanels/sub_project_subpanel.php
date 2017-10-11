<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
$subpanel_layout = array(
	'top_buttons' => array(
		array('widget_class' => 'SubPanelTopCreateButton'),
		array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'Accounts'),
	),

	'where' => '',
	
	
	'fill_in_additional_fields'=>true,
	'list_fields' => array(
		'name'=>array(
	 		'vname' => 'LBL_LIST_NAME',
			'widget_class' => 'SubPanelDetailViewLink',
			'width' => '35%',
		),
        'description' => array(
            'vname' => 'LBL_DESCRIPTION',
            'width' => '20%',
			'sortable' => true,
        ),
		'estimated_start_date' => array(
			'vname' => 'LBL_DATE_START',
			'width' => '25%',
			'sortable' => true,
		),
		'estimated_end_date' => array(
			'vname' => 'LBL_DATE_END',
			'width' => '20%',
			'sortable' => true,
		),	
        'status' => array(
            'vname' => 'LBL_OVERALL_STATUS',
            'width' => '20%'
        ),
		'edit_button'=>array(
			'vname' => 'LBL_EDIT_BUTTON',
			'widget_class' => 'SubPanelEditButton',
			'module' => 'Project',
		 	'width' => '3%',
		),
		'remove_button'=>array(
			'vname' => 'LBL_REMOVE',
			'widget_class' => 'SubPanelRemoveButton',
 		 	'module' => 'Project',
	 		'width' => '3%',
		),				
	),
);

?>