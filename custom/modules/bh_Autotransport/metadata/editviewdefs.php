<?php
$module_name = 'bh_Autotransport';
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
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
        ),
        1 => 
        array (
          0 => 'description',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'autotransport_type',
            'studio' => 'visible',
            'label' => 'LBL_TYPE_AUTOTRANSPORT',
          ),
          1 => 'assigned_user_name',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'autotransport_fuel_type',
            'studio' => 'visible',
            'label' => 'LBL_FUEL_TYPE',
          ),
          1 => 
          array (
            'name' => 'autotransport_purchase_methods',
            'studio' => 'visible',
            'label' => 'LBL_PURCHASE_METHOD',
          ),
        ),
      ),
    ),
  ),
);
?>
