<?php
$module_name = 'bh_place_of_work';
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
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
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
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'date_start',
            'label' => 'LBL_DATE_START',
          ),
          1 => 
          array (
            'name' => 'bh_org_bh_place_of_work_1_name',
            'label' => 'LBL_BH_ORG_BH_PLACE_OF_WORK_1_FROM_BH_ORG_TITLE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'bh_category_at_work_bh_place_of_work_1_name',
            'label' => 'LBL_BH_CATEGORY_AT_WORK_BH_PLACE_OF_WORK_1_FROM_BH_CATEGORY_AT_WORK_TITLE',
          ),
          1 => 
          array (
            'name' => 'bh_position_at_work_bh_place_of_work_1_name',
            'label' => 'LBL_BH_POSITION_AT_WORK_BH_PLACE_OF_WORK_1_FROM_BH_POSITION_AT_WORK_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>
