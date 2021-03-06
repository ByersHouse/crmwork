<?php
$module_name = 'bh_passports';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
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
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'passport_type',
            'studio' => 'visible',
            'label' => 'LBL_PASSPORT_TYPE',
          ),
          1 => 
          array (
            'name' => 'passport_num',
            'label' => 'LBL_PASSPORT_NUM',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'birthday',
            'label' => 'LBL_DATE_BIRTHDAY',
          ),
          1 => 
          array (
            'name' => 'date_issue',
            'label' => 'LBL_DATE_ISSUE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'date_expiration',
            'label' => 'LBL_DATE_EXPIRATION',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'issued_by',
            'label' => 'LBL_ISSUED_BY',
          ),
          1 => 
          array (
            'name' => 'placebirth',
            'label' => 'LBL_PLACEBIRTH',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'bh_passports_bh_country_1_name',
          ),
          1 => 
          array (
            'name' => 'leads_bh_passports_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
