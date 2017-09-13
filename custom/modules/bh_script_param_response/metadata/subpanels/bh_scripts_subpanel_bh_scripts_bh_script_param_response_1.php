<?php
// created: 2017-09-13 15:13:52
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
    'module' => 'bh_script_param_response',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'bh_script_param_response',
    'width' => '5%',
    'default' => true,
  ),
  'bh_script_param_response_type' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_RESPONSE_TYPE',
    'width' => '10%',
    'default' => true,
  ),
  'bh_script_param_response_date' => 
  array (
    'type' => 'date',
    'vname' => 'LBL_RESPONSE_DATE',
    'width' => '10%',
    'default' => true,
  ),
);