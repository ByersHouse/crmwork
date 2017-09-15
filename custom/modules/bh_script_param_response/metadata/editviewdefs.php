<?php
$module_name = 'bh_script_param_response';
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
            'name' => 'bh_script_param_response_type',
            'studio' => 'visible',
            'label' => 'LBL_RESPONSE_TYPE',
          ),
          1 => 
          array (
            'name' => 'bh_script_param_response_comment',
            'label' => 'LBL_RESPONSE_COMMENT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bh_script_param_response_date',
            'label' => 'LBL_RESPONSE_DATE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'channel_type',
            'studio' => 'visible',
            'label' => 'LBL_CHANNEL_TYPE',
          ),
          1 => 
          array (
            'name' => 'bh_scripts_bh_script_param_response_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
