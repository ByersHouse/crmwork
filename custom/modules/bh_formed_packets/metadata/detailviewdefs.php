<?php
$module_name = 'bh_formed_packets';
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
            'name' => 'activate_date',
            'label' => 'LBL_DATE_ACTIVATE',
          ),
          1 => 
          array (
            'name' => 'packet_quantity',
            'label' => 'LBL_PACKET_QUANTITY',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'packet_sum',
            'label' => 'LBL_PACKET_SUM',
          ),
          1 => 
          array (
            'name' => 'packet_validity',
            'label' => 'LBL_PACKET_VALIDITY',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'packet_list',
            'studio' => 'visible',
            'label' => 'LBL_PACKET_LIST',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'aos_products_bh_formed_packets_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
