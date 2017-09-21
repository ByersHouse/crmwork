<?php
// created: 2017-09-20 15:34:18
$subpanel_layout['list_fields'] = array (
  'post_code' => 
  array (
    'type' => 'int',
    'vname' => 'LBL_POST_CODE',
    'width' => '10%',
    'default' => true,
  ),
  'house' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_HOUSE_NUM',
    'width' => '10%',
    'default' => true,
  ),
  'house_block' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_HOUSE_BLOCK',
    'width' => '10%',
    'default' => true,
  ),
  'ap_num' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_AP_NUM',
    'width' => '10%',
    'default' => true,
  ),
  'date_modified' => 
  array (
    'vname' => 'LBL_DATE_MODIFIED',
    'width' => '10%',
    'default' => true,
  ),
  'adress_type' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_ADRESS_TYPE',
    'width' => '10%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'bh_lead_adress',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'bh_lead_adress',
    'width' => '5%',
    'default' => true,
  ),
);