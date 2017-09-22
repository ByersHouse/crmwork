<?php
$module_name = 'bh_place_of_work';
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
          1 => 
          array (
            'name' => 'leads_bh_place_of_work_1_name',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'bh_org_bh_place_of_work_1_name',
          ),
          1 => 
          array (
            'name' => 'bh_category_at_work_bh_place_of_work_1_name',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bh_position_at_work_bh_place_of_work_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
