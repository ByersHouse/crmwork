<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-20 14:47:10
$dictionary["bh_lead_adress"]["fields"]["leads_bh_lead_adress_1"] = array (
  'name' => 'leads_bh_lead_adress_1',
  'type' => 'link',
  'relationship' => 'leads_bh_lead_adress_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_bh_lead_adress_1leads_ida',
);
$dictionary["bh_lead_adress"]["fields"]["leads_bh_lead_adress_1_name"] = array (
  'name' => 'leads_bh_lead_adress_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_bh_lead_adress_1leads_ida',
  'link' => 'leads_bh_lead_adress_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_lead_adress"]["fields"]["leads_bh_lead_adress_1leads_ida"] = array (
  'name' => 'leads_bh_lead_adress_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_bh_lead_adress_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_BH_LEAD_ADRESS_TITLE',
);





$dictionary['bh_lead_adress']['fields']['post_code'] = array (
    'required' => false,
    'name' => 'post_code',
    'vname' => 'LBL_POST_CODE',
    'type' => 'varchar',
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
    'size' => '10',
    'enable_range_search' => false,
);

$dictionary['bh_lead_adress']['fields']['house'] = array (
    'required' => false,
    'name' => 'house',
    'vname' => 'LBL_HOUSE_NUM',
    'type' => 'varchar',
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
    'size' => '10',
    'enable_range_search' => false,
);

$dictionary['bh_lead_adress']['fields']['house_block'] = array (
    'required' => false,
    'name' => 'house_block',
    'vname' => 'LBL_HOUSE_BLOCK',
    'type' => 'varchar',
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
    'size' => '10',
    'enable_range_search' => false,
);

$dictionary['bh_lead_adress']['fields']['ap_num'] = array (
    'required' => false,
    'name' => 'ap_num',
    'vname' => 'LBL_AP_NUM',
    'type' => 'varchar',
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
    'size' => '10',
    'enable_range_search' => false,
);


$dictionary['bh_lead_adress']['fields']['register_date'] = array (
    'required' => false,
    'name' => 'register_date',
    'vname' => 'LBL_REGISTER_DATE',
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
    'size' => '10',
    'enable_range_search' => false,
);

$dictionary['bh_lead_adress']['fields']['date_of_stay'] = array (
    'required' => false,
    'name' => 'date_of_stay',
    'vname' => 'LBL_STAY_DATE',
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


$dictionary['bh_lead_adress']['fields']['adress_type'] = array (
    'required' => false,
    'name' => 'adress_type',
    'vname' => 'LBL_ADRESS_TYPE',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => '',
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => 100,
    'size' => '20',
    'options' => 'adress_type_list',
    'studio' => 'visible',
    'dependency' => false,
);
?>