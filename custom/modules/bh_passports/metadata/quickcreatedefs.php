<?php
$module_name = 'bh_passports';
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
            'name' => 'bh_passports_bh_country_1_name',
            'label' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'date_issue',
            'label' => 'LBL_DATE_ISSUE',
          ),
          1 => 
          array (
            'name' => 'date_modified',
            'comment' => 'Date record last modified',
            'label' => 'LBL_DATE_MODIFIED',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'birthday',
            'label' => 'LBL_DATE_BIRTHDAY',
          ),
          1 => 
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
            'name' => 'passport_num',
            'label' => 'LBL_PASSPORT_NUM',
          ),
          1 => 
          array (
            'name' => 'passport_type',
            'studio' => 'visible',
            'label' => 'LBL_PASSPORT_TYPE',
          ),
        ),
      ),
    ),
  ),
);
?>
