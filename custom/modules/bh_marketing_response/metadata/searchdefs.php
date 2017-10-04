<?php
$module_name = 'bh_marketing_response';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'current_user_only' => 
      array (
        'name' => 'current_user_only',
        'label' => 'LBL_CURRENT_USER_FILTER',
        'type' => 'bool',
        'default' => true,
        'width' => '10%',
      ),
      'modified_user_id' => 
      array (
        'type' => 'assigned_user_name',
        'label' => 'LBL_MODIFIED',
        'width' => '10%',
        'default' => true,
        'name' => 'modified_user_id',
      ),
      'created_by' => 
      array (
        'type' => 'assigned_user_name',
        'label' => 'LBL_CREATED',
        'width' => '10%',
        'default' => true,
        'name' => 'created_by',
      ),
      'bh_marketing_company_bh_marketing_response_1_name' => 
      array (
        'type' => 'relate',
        'link' => true,
        'label' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_COMPANY_TITLE',
        'id' => 'BH_MARKETI8C3ECOMPANY_IDA',
        'width' => '10%',
        'default' => true,
        'name' => 'bh_marketing_company_bh_marketing_response_1_name',
      ),
      'leads_bh_marketing_response_1_name' => 
      array (
        'type' => 'relate',
        'link' => true,
        'label' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_LEADS_TITLE',
        'id' => 'LEADS_BH_MARKETING_RESPONSE_1LEADS_IDA',
        'width' => '10%',
        'default' => true,
        'name' => 'leads_bh_marketing_response_1_name',
      ),
      'response_date' => 
      array (
        'type' => 'date',
        'label' => 'LBL_RESPONSE_DATE',
        'width' => '10%',
        'default' => true,
        'name' => 'response_date',
      ),
      'response_type' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_RESPONSE_TYPE',
        'width' => '10%',
        'default' => true,
        'name' => 'response_type',
      ),
      'assigned_user_id' => 
      array (
        'name' => 'assigned_user_id',
        'label' => 'LBL_ASSIGNED_TO',
        'type' => 'enum',
        'function' => 
        array (
          'name' => 'get_user_array',
          'params' => 
          array (
            0 => false,
          ),
        ),
        'width' => '10%',
        'default' => true,
      ),
    ),
    'advanced_search' => 
    array (
      0 => 'name',
      1 => 
      array (
        'name' => 'assigned_user_id',
        'label' => 'LBL_ASSIGNED_TO',
        'type' => 'enum',
        'function' => 
        array (
          'name' => 'get_user_array',
          'params' => 
          array (
            0 => false,
          ),
        ),
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
