<?php
// created: 2017-10-09 16:53:29
$subpanel_layout['list_fields'] = array (
  'phone_contact' => 
  array (
    'type' => 'phone',
    'vname' => 'LBL_PHONE_CONTACT',
    'width' => '10%',
    'default' => true,
  ),
  'leads_bh_phones_1_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_LEADS_BH_PHONES_1_FROM_LEADS_TITLE',
    'id' => 'LEADS_BH_PHONES_1LEADS_IDA',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Leads',
    'target_record_key' => 'leads_bh_phones_1leads_ida',
  ),
  'operator' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_OPERATOR',
    'width' => '10%',
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
    'module' => 'bh_phones',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'bh_phones',
    'width' => '5%',
    'default' => true,
  ),
);