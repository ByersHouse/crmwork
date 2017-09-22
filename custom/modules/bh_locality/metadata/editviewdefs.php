<?php
$module_name = 'bh_locality';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
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
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 'description',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'is_regional',
            'label' => 'LBL_IS_REGIONAL',
          ),
          1 => 
          array (
            'name' => 'locality_type',
            'studio' => 'visible',
            'label' => 'LBL_LOCALITY_TYPE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bh_region_area_bh_locality_1_name',
          ),
          1 => 
          array (
            'name' => 'bh_lead_adress_bh_locality_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
