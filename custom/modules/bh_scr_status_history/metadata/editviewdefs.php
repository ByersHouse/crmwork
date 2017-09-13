<?php
$module_name = 'bh_scr_status_history';
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
            'name' => 'bh_scr_status_history_comment',
            'label' => 'LBL_RESPONSE_COMMENT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'scr_status_history_activation',
            'label' => 'LBL_DATE_ACTIVATION',
          ),
          1 => 
          array (
            'name' => 'scr_status_history_deactivation',
            'label' => 'LBL_DATE_DEACTIVATION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'scr_status_history_rate_effort',
            'label' => 'LBL_RATE_EFFORT',
          ),
          1 => 
          array (
            'name' => 'scr_status_history_status',
            'studio' => 'visible',
            'label' => 'LBL_SCRIPT_STATUS',
          ),
        ),
      ),
    ),
  ),
);
?>
