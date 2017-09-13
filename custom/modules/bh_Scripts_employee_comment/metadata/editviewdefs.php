<?php
$module_name = 'bh_Scripts_employee_comment';
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
            'name' => 'bh_scripts_employee_comment_com',
            'label' => 'LBL_RESPONSE_COMMENT',
          ),
          1 => 
          array (
            'name' => 'bh_scripts_employee_comment_date',
            'label' => 'LBL_RESPONSE_DATE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bh_scripts_bh_scripts_employee_comment_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
