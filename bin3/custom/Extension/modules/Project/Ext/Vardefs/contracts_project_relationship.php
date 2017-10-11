<?php
$dictionary['Project']['fields']['related_contracts'] = array(
    'name' => 'related_contracts',
    'type' => 'link',
    'relationship' => 'contracts_projects',
    'module' => 'AOS_Contracts',
    'bean_name' => 'AOS_Contracts',
    'source' => 'non-db',
    'vname' => 'LBL_CONTRACTS_PROJECT_LINK',
);
