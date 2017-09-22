<?php
$module_name = 'bh_locality';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
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
      'useTabs' => true,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 
          array (
            'name' => 'locality_type',
            'studio' => 'visible',
            'label' => 'LBL_LOCALITY_TYPE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'is_regional',
            'label' => 'LBL_IS_REGIONAL',
          ),
          1 => 
          array (
            'name' => 'bh_region_area_bh_locality_1_name',
            'label' => 'LBL_BH_REGION_AREA_BH_LOCALITY_1_FROM_BH_REGION_AREA_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>
