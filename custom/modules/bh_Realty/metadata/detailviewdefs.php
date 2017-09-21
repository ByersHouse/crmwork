<?php
$module_name = 'bh_Realty';
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
        ),
        1 => 
        array (
          0 => 'description',
          1 => 'assigned_user_name',
        ),
        2 => 
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
        3 => 
        array (
          0 => 
          array (
            'name' => 'realty_method_obtaining',
            'studio' => 'visible',
            'label' => 'LBL_METHOD_OBTAINING',
          ),
          1 => 
          array (
            'name' => 'realty_owner_pledge',
            'label' => 'LBL_OWNER_PLEDGE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'realty_date_purchase',
            'label' => 'LBL_DATE_PURCHASE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'leads_bh_realty_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
