<?php
$module_name = 'bh_Card_ident';
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
        'includes' => 
      array (
        0 => 
        array (
          'file' => 'custom/modules/bh_Card_ident/js/editview.js',
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
            'name' => 'date_vidachi',
            'label' => 'LBL_DATE_VIDACHI',
          ),
        ),
        1 => 
        array (
          0 => 'assigned_user_name',
          1 => 
          array (
            'name' => 'date_activation',
            'label' => 'LBL_DATE_ACTIVATION',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'card_status',
            'studio' => 'visible',
            'label' => 'LBL_CARD_STATUS',
          ),
          1 => 
          array (
            'name' => 'pin_status',
            'studio' => 'visible',
            'label' => 'LBL_CARD_PIN_STATUS',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'secret_word',
            'studio' => 'visible',
            'label' => 'LBL_CODE_WORD',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'block_reason',
            'studio' => 'visible',
            'label' => 'LBL_BLOCK_REASON',
          ),
          1 => 'description',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'bh_card_ident_leads_name',
          ),
        ),
      ),
    ),
  ),
);
?>
