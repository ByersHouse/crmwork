<?php
// created: 2017-09-20 11:50:01
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'date_modified' => 
  array (
    'vname' => 'LBL_DATE_MODIFIED',
    'width' => '45%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'bh_case_compound',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'bh_case_compound',
    'width' => '5%',
    'default' => true,
  ),
  'aos_products_bh_case_compound_1_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_AOS_PRODUCTS_BH_CASE_COMPOUND_1_FROM_AOS_PRODUCTS_TITLE',
    'id' => 'AOS_PRODUCTS_BH_CASE_COMPOUND_1AOS_PRODUCTS_IDA',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'AOS_Products',
    'target_record_key' => 'aos_products_bh_case_compound_1aos_products_ida',
  ),
);