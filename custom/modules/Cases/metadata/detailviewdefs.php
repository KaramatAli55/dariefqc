<?php
$viewdefs ['Cases'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_CASE_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_case_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'case_number',
            'label' => 'LBL_CASE_NUMBER',
          ),
          1 => 
          array (
            'name' => 'state',
            'comment' => 'The state of the case (i.e. open/closed)',
            'label' => 'LBL_STATE',
          ),
        ),
        1 => 
        array (
          0 => 'type',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'referencenum_c',
            'label' => 'LBL_REFERENCENUM',
          ),
          1 => 'priority',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_SUBJECT',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'case_location_c',
            'studio' => 'visible',
            'label' => 'LBL_CASE_LOCATION',
          ),
          1 => 
          array (
            'name' => 'jjwg_maps_address_c',
            'label' => 'LBL_JJWG_MAPS_ADDRESS',
          ),
        ),
        5 => 
        array (
          0 => 'description',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'update_text',
            'studio' => 'visible',
            'label' => 'LBL_UPDATE_TEXT',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'internal',
            'studio' => 'visible',
            'label' => 'LBL_INTERNAL',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'case_update_form',
            'studio' => 'visible',
            'label' => 'LBL_CASE_UPDATE_FORM',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
          1 => 'status',
        ),
        1 => 
        array (
          0 => 'resolution',
          1 => 
          array (
            'name' => 'case_materials_c',
            'studio' => 'visible',
            'label' => 'LBL_CASE_MATERIALS',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'completed_date_c',
            'label' => 'LBL_COMPLETED_DATE',
          ),
          1 => 
          array (
            'name' => 'case_time_c',
            'label' => 'LBL_CASE_TIME',
          ),
        ),
      ),
    ),
  ),
);
?>
