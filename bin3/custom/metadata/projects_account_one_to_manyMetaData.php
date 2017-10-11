<?php
$dictionary["projects_account_one_to_many"] = array(
    'relationships' =>
    array(
        'projects_account_one_to_many' =>
        array(
            'lhs_module' => 'Accounts',
            'lhs_table' => 'accounts',
            'lhs_key' => 'id',
            'rhs_module' => 'Project',
            'rhs_table' => 'project',
            'rhs_key' => 'relate_account_id',
            'relationship_type' => 'one-to-many',
        ),
    ),
);

?>


