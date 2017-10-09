<?php
$module_name = 'bh_phones';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'PHONE_CONTACT' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_PHONE_CONTACT',
    'width' => '10%',
    'default' => true,
  ),
  'LEADS_BH_PHONES_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_LEADS_BH_PHONES_1_FROM_LEADS_TITLE',
    'id' => 'LEADS_BH_PHONES_1LEADS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'OPERATOR' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_OPERATOR',
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
);
?>
