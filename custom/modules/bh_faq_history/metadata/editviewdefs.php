<?php
$module_name = 'bh_faq_history';
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
          0 => 
          array (
            'name' => 'bh_faq_history_bh_faq_name',
          ),
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => '',
          1 => '',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'date_redact',
            'label' => 'LBL_DATE_REDACT',
          ),
          1 => 'name',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'redact_content',
            'studio' => 'visible',
            'label' => 'LBL_REDACT_CONTENT',
          ),
        ),
      ),
    ),
  ),
);
?>
