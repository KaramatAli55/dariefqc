<?php
$dictionary['Project']['fields']['requires_permit'] = array(
    'name' => 'requires_permit',
    'type' => 'enum',
    'vname' => 'LBL_REQUIRES_PERMIT',
    'required' => false,
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => true,
    'reportable' => true,
    'len' => 100,
    'options' => 'requires_permit_list',
    'studio' => 'visible',
);

$dictionary['Project']['fields']['permit_value'] = array(
    'name' => 'permit_value',
    'type' => 'varchar',
    'vname' => 'LBL_PERMIT_VALUE',
    'massupdate' => 0,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => 1,
    'reportable' => true,
    'len' => '50'
);
