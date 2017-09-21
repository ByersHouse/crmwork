<?php
$module_name = 'bh_Autotransport';
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
          0 => 
          array (
            'name' => 'autotransport_type',
            'studio' => 'visible',
            'label' => 'LBL_TYPE_AUTOTRANSPORT',
          ),
          1 => 
          array (
            'name' => 'autotransport_fuel_type',
            'studio' => 'visible',
            'label' => 'LBL_FUEL_TYPE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'autotransport_model_mark',
            'label' => 'LBL_MODEL_MARK',
          ),
          1 => 
          array (
            'name' => 'autotransport_model',
            'studio' => 'visible',
            'label' => 'LBL_AUTOTRANSPORT_MODEL',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'autotransport_engine_capacity',
            'label' => 'LBL_ENGINE_CAPACITY',
          ),
          1 => 
          array (
            'name' => 'autotransport_issue_year',
            'label' => 'LBL_ISSUE_YEAR',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'autotransport_another_model',
            'label' => 'LBL_ANOTHER_MODEL_MARK',
          ),
          1 => 
          array (
            'name' => 'autotransport_owner_pledge',
            'label' => 'LBL_OWNER_PLEDGE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'autotransport_purchase_methods',
            'studio' => 'visible',
            'label' => 'LBL_PURCHASE_METHOD',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
?>
