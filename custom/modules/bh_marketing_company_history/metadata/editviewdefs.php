<?php
$module_name = 'bh_marketing_company_history';
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
            'name' => 'date_change',
            'label' => 'LBL_DATE_CHANGE',
          ),
          1 => 
          array (
            'name' => 'company_status',
            'studio' => 'visible',
            'label' => 'LBL_COMPANY_STATUS',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'start_company',
            'label' => 'LBL_DATE_COMPANY_START',
          ),
          1 => 
          array (
            'name' => 'company_end',
            'label' => 'LBL_DATE_COMPANY_END',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bh_marketing_company_bh_marketing_company_history_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
