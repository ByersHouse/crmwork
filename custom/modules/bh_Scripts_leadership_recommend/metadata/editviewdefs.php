<?php
$module_name = 'bh_Scripts_leadership_recommend';
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
          0 => 'description',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'recommend_text',
            'label' => 'LBL_RECOMMEND_TEXT',
          ),
          1 => 
          array (
            'name' => 'recommend_date',
            'label' => 'LBL_RECOMMEND_DATE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bh_scripts_bh_scripts_leadership_recommend_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>