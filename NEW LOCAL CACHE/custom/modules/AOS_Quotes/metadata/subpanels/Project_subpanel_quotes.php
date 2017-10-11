<?php
$module_name = 'AOS_Quotes';
$subpanel_layout = array(
    'top_buttons' =>
    array(
        0 =>
        array(
            'widget_class' => 'SubPanelTopCreateButton',
        ),
//        1 =>
//        array(
//            'widget_class' => 'SubPanelTopSelectButton',
//            'popup_module' => 'AOS_Quotes',
//        ),
    ),
    'where' => '',
    'list_fields' =>
    array(
        'number' =>
        array(
            'width' => '5%',
            'vname' => 'LBL_LIST_QUOTE_NUMBER',
            'default' => true,
        ),
        'name' =>
        array(
            'vname' => 'LBL_NAME',
            'widget_class' => 'SubPanelDetailViewLink',
            'width' => '25%',
            'default' => true,
        ),
        'stage' =>
        array(
            'vname' => 'LBL_QUOTE_STAGE',
            'widget_class' => 'SubPanelDetailViewLink',
            'width' => '25%',
            'default' => true,
        ),
        'expiration' =>
        array(
            'width' => '15%',
            'vname' => 'LBL_EXPIRATION',
            'default' => true,
        ),
        'invoice_status' =>
        array(
            'width' => '15%',
            'vname' => 'LBL_INVOICE_STATUS',
            'default' => true,
        ),
        'currency_id' => array(
            'usage' => 'query_only',
        ),
        'edit_button' =>
        array(
            'widget_class' => 'SubPanelEditButton',
            'module' => 'AOS_Quotes',
            'width' => '4%',
            'default' => true,
        ),
//        'remove_button' =>
//        array(
//            'widget_class' => 'SubPanelRemoveButton',
//            'module' => 'AOS_Quotes',
//            'width' => '5%',
//            'default' => true,
//        ),
    ),
);
