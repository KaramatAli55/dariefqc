<?php
$module_name = 'AOS_Contracts';
$subpanel_layout = array(
    'top_buttons' =>
    array(
        0 =>
        array(
            'widget_class' => 'SubPanelTopCreateButton',
        ),
        1 =>
        array(
            'widget_class' => 'SubPanelTopSelectButton',
            'popup_module' => 'AOS_Contracts',
        ),
    ),
    'where' => '',
    'list_fields' =>
    array(
        'name' =>
        array(
            'vname' => 'LBL_NAME_DESCRIPTION',
            'widget_class' => 'SubPanelDetailViewLink',
            'width' => '25%',
            'default' => true,
        ),
        'purchase_order_number' =>
        array(
            'vname' => 'LBL_PURCHASE_ORDER_NUMBER',
            'width' => '25%',
            'default' => true,
        ),
        'contact' =>
        array(
            'vname' => 'LBL_RECEIVED_FROM',
            'width' => '25%',
            'default' => true,
        ),
        'total_contract_value' =>
        array(
            'type' => 'currency',
            'vname' => 'LBL_TOTAL_CONTRACT_AMOUNT',
            'currency_format' => true,
            'width' => '15%',
            'default' => true,
        ),
        'filename' => array(
            'vname' => 'LBL_CONTRACT_ATTACHMENT',
            'width' => '15%',
        ),
        'currency_id' => array(
            'usage' => 'query_only',
        ),
        'edit_button' =>
        array(
            'widget_class' => 'SubPanelEditButton',
            'module' => 'AOS_Contracts',
            'width' => '4%',
            'default' => true,
        ),
        'remove_button' =>
        array(
            'widget_class' => 'SubPanelRemoveButton',
            'module' => 'AOS_Contracts',
            'width' => '5%',
            'default' => true,
        ),
    ),
);
