<?php
$module_name = 'bh_Realty';
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
          0 => 'name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'realty_type_ownership',
            'studio' => 'visible',
            'label' => 'LBL_TYPE_OWNERSHIP',
          ),
          1 => 
          array (
            'name' => 'realty_property_type',
            'studio' => 'visible',
            'label' => 'LBL_PROPERTY_TYPE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'realty_owner_pledge',
            'label' => 'LBL_OWNER_PLEDGE',
          ),
          1 => 
          array (
            'name' => 'realty_method_obtaining',
            'studio' => 'visible',
            'label' => 'LBL_METHOD_OBTAINING',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'realty_date_purchase',
            'label' => 'LBL_DATE_PURCHASE',
          ),
          1 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
      ),
    ),
  ),
);
?>
