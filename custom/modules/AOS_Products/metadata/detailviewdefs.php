<?php
$module_name = 'AOS_Products';
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
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'product_type',
            'studio' => 'visible',
            'label' => 'LBL_TYPE_LIST',
          ),
          1 => 
          array (
            'name' => 'modified_by_name',
            'label' => 'LBL_MODIFIED_NAME',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'essence',
            'label' => 'LBL_PRODUCT_ESSENCE',
          ),
          1 => 
          array (
            'name' => 'registration_use',
            'label' => 'LBL_PRODUCT_REGISTRATION_USE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'activation_date',
            'label' => 'LBL_PRODUCT_ACTIVATION',
          ),
          1 => 
          array (
            'name' => 'product_status',
            'studio' => 'visible',
            'label' => 'LBL_STATUS_LIST',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'basic_cost',
            'label' => 'LBL_PRODUCT_BASIC_COST',
          ),
          1 => 
          array (
            'name' => 'product_currency',
            'studio' => 'visible',
            'label' => 'LBL_CURRENCY_LIST',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'currency_id',
            'studio' => 'visible',
            'label' => 'LBL_CURRENCY',
          ),
          1 => 
          array (
            'name' => 'product_validity',
            'label' => 'LBL_PRODUCT_VALIDITY',
          ),
        ),
      ),
    ),
  ),
);
?>
