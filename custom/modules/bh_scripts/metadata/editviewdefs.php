<?php
$module_name = 'bh_scripts';
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
          0 => 
          array (
            'name' => 'script_status',
            'studio' => 'visible',
            'label' => 'LBL_SCRIPT_STATUS',
          ),
          1 => 
          array (
            'name' => 'script_type',
            'studio' => 'visible',
            'label' => 'LBL_SCRIPT_TYPE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'script_impact',
            'studio' => 'visible',
            'label' => 'LBL_SCRIPT_IMPACT',
          ),
          1 => 
          array (
            'name' => 'script_date_activation',
            'label' => 'LBL_DATE_ACTIVATION',
          ),
        ),
        3 => 
        array (
          0 => 'description',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'script_date_deactivation',
            'label' => 'LBL_DATE_DEACTIVATION',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
?>
