<?php
$module_name = 'bh_lead_adress';
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
            'name' => 'bh_lead_adress_bh_country_1_name',
            'label' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
          ),
          1 => 
          array (
            'name' => 'bh_lead_adress_bh_region_area_1_name',
            'label' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'bh_lead_adress_bh_region_1_name',
            'label' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_REGION_TITLE',
          ),
          1 => 
          array (
            'name' => 'bh_lead_adress_bh_locality_1_name',
            'label' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'house',
            'label' => 'LBL_HOUSE_NUM',
          ),
          1 => 
          array (
            'name' => 'ap_num',
            'label' => 'LBL_AP_NUM',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'house_block',
            'label' => 'LBL_HOUSE_BLOCK',
          ),
          1 => 
          array (
            'name' => 'post_code',
            'label' => 'LBL_POST_CODE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'register_date',
            'label' => 'LBL_REGISTER_DATE',
          ),
          1 => 
          array (
            'name' => 'date_of_stay',
            'label' => 'LBL_STAY_DATE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'adress_type',
            'studio' => 'visible',
            'label' => 'LBL_ADRESS_TYPE',
          ),
        ),
      ),
    ),
  ),
);
?>
