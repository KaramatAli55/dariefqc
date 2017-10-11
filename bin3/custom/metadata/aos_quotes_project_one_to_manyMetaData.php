<?php
$dictionary["aos_quotes_project_one_to_many"] = array(
    'relationships' =>
    array(
        'aos_quotes_project_one_to_many' =>
        array(
            'lhs_module' => 'Project',
            'lhs_table' => 'project',
            'lhs_key' => 'id',
            'rhs_module' => 'AOS_Quotes',
            'rhs_table' => 'aos_quotes',
            'rhs_key' => 'relate_project_id',
            'relationship_type' => 'one-to-many',
        ),
    ),
);
