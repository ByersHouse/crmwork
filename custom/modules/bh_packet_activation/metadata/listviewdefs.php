<?php
$module_name = 'bh_packet_activation';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'PACKET_LIST' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_PACKET_LIST',
    'width' => '10%',
    'default' => true,
  ),
  'BH_FORMED_PACKETS_BH_PACKET_ACTIVATION_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_BH_FORMED_PACKETS_BH_PACKET_ACTIVATION_1_FROM_BH_FORMED_PACKETS_TITLE',
    'id' => 'BH_FORMED_PACKETS_BH_PACKET_ACTIVATION_1BH_FORMED_PACKETS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
  'MODIFIED_BY_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_MODIFIED_NAME',
    'id' => 'MODIFIED_USER_ID',
    'width' => '10%',
    'default' => true,
  ),
  'DATE_MODIFIED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_MODIFIED',
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
