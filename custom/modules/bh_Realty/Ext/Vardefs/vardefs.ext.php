<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-20 10:13:23
$dictionary["bh_Realty"]["fields"]["leads_bh_realty_1"] = array (
  'name' => 'leads_bh_realty_1',
  'type' => 'link',
  'relationship' => 'leads_bh_realty_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_BH_REALTY_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_bh_realty_1leads_ida',
);
$dictionary["bh_Realty"]["fields"]["leads_bh_realty_1_name"] = array (
  'name' => 'leads_bh_realty_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_BH_REALTY_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_bh_realty_1leads_ida',
  'link' => 'leads_bh_realty_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_Realty"]["fields"]["leads_bh_realty_1leads_ida"] = array (
  'name' => 'leads_bh_realty_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_bh_realty_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_REALTY_1_FROM_BH_REALTY_TITLE',
);



$dictionary['bh_Realty']['fields']['realty_type_ownership'] = array (
    'required' => false,
    'name' => 'realty_type_ownership',
    'vname' => 'LBL_TYPE_OWNERSHIP',
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
    'options' => 'realty_type_ownership_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_Realty']['fields']['realty_method_obtaining'] = array (
    'required' => false,
    'name' => 'realty_method_obtaining',
    'vname' => 'LBL_METHOD_OBTAINING',
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
    'options' => 'realty_method_obtaining_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_Realty']['fields']['realty_owner_pledge'] = array (
    'required' => false,
    'name' => 'realty_owner_pledge',
    'vname' => 'LBL_OWNER_PLEDGE',
    'type' => 'bool',
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

$dictionary['bh_Realty']['fields']['realty_property_type'] = array (
    'required' => false,
    'name' => 'realty_property_type',
    'vname' => 'LBL_PROPERTY_TYPE',
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
    'options' => 'realty_property_type_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_Realty']['fields']['realty_date_purchase'] = array (
    'required' => false,
    'name' => 'realty_date_purchase',
    'vname' => 'LBL_DATE_PURCHASE',
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

?>