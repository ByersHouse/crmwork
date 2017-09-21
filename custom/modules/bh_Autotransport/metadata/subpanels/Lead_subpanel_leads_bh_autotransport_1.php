<?php
// created: 2017-09-20 10:57:13
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
    'module' => 'bh_Autotransport',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'bh_Autotransport',
    'width' => '5%',
    'default' => true,
  ),
  'autotransport_type' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_TYPE_AUTOTRANSPORT',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_model' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_AUTOTRANSPORT_MODEL',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_model_mark' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_MODEL_MARK',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_issue_year' => 
  array (
    'type' => 'int',
    'vname' => 'LBL_ISSUE_YEAR',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_engine_capacity' => 
  array (
    'type' => 'float',
    'vname' => 'LBL_ENGINE_CAPACITY',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_another_model' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_ANOTHER_MODEL_MARK',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_fuel_type' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_FUEL_TYPE',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_owner_pledge' => 
  array (
    'type' => 'bool',
    'vname' => 'LBL_OWNER_PLEDGE',
    'width' => '10%',
    'default' => true,
  ),
  'autotransport_own_type' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_OWN_TYPE',
    'width' => '10%',
    'default' => true,
  ),
);