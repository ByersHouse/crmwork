<?php
$module_name = 'bh_marketing_response';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_COMPANY_TITLE',
    'id' => 'BH_MARKETI8C3ECOMPANY_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'LEADS_BH_MARKETING_RESPONSE_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_LEADS_TITLE',
    'id' => 'LEADS_BH_MARKETING_RESPONSE_1LEADS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
);
?>
