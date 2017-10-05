<?php
// created: 2017-10-05 17:46:40
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
  'leads_bh_marketing_response_1_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_LEADS_TITLE',
    'id' => 'LEADS_BH_MARKETING_RESPONSE_1LEADS_IDA',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Leads',
    'target_record_key' => 'leads_bh_marketing_response_1leads_ida',
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'bh_marketing_response',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'bh_marketing_response',
    'width' => '5%',
    'default' => true,
  ),
);