<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-11 10:02:06
$dictionary["bh_Card_ident"]["fields"]["bh_card_ident_leads"] = array (
  'name' => 'bh_card_ident_leads',
  'type' => 'link',
  'relationship' => 'bh_card_ident_leads',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_BH_CARD_IDENT_LEADS_FROM_LEADS_TITLE',
  'id_name' => 'bh_card_ident_leadsleads_idb',
);
$dictionary["bh_Card_ident"]["fields"]["bh_card_ident_leads_name"] = array (
  'name' => 'bh_card_ident_leads_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_CARD_IDENT_LEADS_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'bh_card_ident_leadsleads_idb',
  'link' => 'bh_card_ident_leads',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_Card_ident"]["fields"]["bh_card_ident_leadsleads_idb"] = array (
  'name' => 'bh_card_ident_leadsleads_idb',
  'type' => 'link',
  'relationship' => 'bh_card_ident_leads',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_CARD_IDENT_LEADS_FROM_LEADS_TITLE',
);


$dictionary['bh_Card_ident']['fields']['date_vidachi'] = array (
      'required' => false,
      'name' => 'date_vidachi',
      'vname' => 'LBL_DATE_VIDACHI',
      'type' => 'date',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'enable_range_search' => false,
);


$dictionary['bh_Card_ident']['fields']['date_activation'] = array (
      'required' => false,
      'name' => 'date_activation',
      'vname' => 'LBL_DATE_ACTIVATION',
      'type' => 'datetimecombo',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'enable_range_search' => false,
);


$dictionary['bh_Card_ident']['fields']['card_status'] = array (
      'required' => false,
      'name' => 'card_status',
      'vname' => 'LBL_CARD_STATUS',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'options' => 'card_status_list',
      'studio' => 'visible',
      'size' => '20',
      'enable_range_search' => false,
);

$dictionary['bh_Card_ident']['fields']['pin_status'] = array (
      'required' => false,
      'name' => 'pin_status',
      'vname' => 'LBL_CARD_PIN_STATUS',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'options' => 'pin_status_list',
      'studio' => 'visible',
      'size' => '20',
      'enable_range_search' => false,
);



$dictionary['bh_Card_ident']['fields']['block_reason'] = array (
      'required' => false,
      'name' => 'block_reason',
      'vname' => 'LBL_BLOCK_REASON',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'options' => 'block_reason_list',
      'studio' => 'visible',
      'size' => '20',
      'enable_range_search' => false,
);

$dictionary['bh_Card_ident']['fields']['secret_word'] = array (
      'required' => false,
      'name' => 'secret_word',
      'vname' => 'LBL_CODE_WORD',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Кодовое слово',
      'help' => 'Кодовое слово',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'studio' => 'visible',
      'size' => '20',
      'len' => '15',
      'enable_range_search' => false,
);
?>