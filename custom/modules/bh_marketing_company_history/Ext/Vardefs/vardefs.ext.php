<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-10-03 11:58:40
$dictionary["bh_marketing_company_history"]["fields"]["bh_marketing_company_bh_marketing_company_history_1"] = array (
  'name' => 'bh_marketing_company_bh_marketing_company_history_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_company_history_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_COMPANY_HISTORY_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketi1e9fcompany_ida',
);
$dictionary["bh_marketing_company_history"]["fields"]["bh_marketing_company_bh_marketing_company_history_1_name"] = array (
  'name' => 'bh_marketing_company_bh_marketing_company_history_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_COMPANY_HISTORY_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketi1e9fcompany_ida',
  'link' => 'bh_marketing_company_bh_marketing_company_history_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_marketing_company_history"]["fields"]["bh_marketi1e9fcompany_ida"] = array (
  'name' => 'bh_marketi1e9fcompany_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_company_history_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_COMPANY_HISTORY_1_FROM_BH_MARKETING_COMPANY_HISTORY_TITLE',
);





$dictionary['bh_marketing_company_history']['fields']['start_company'] = array (
    'required' => false,
    'name' => 'start_company',
    'vname' => 'LBL_DATE_COMPANY_START',
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

$dictionary['bh_marketing_company_history']['fields']['date_change'] = array (
    'required' => false,
    'name' => 'date_change',
    'vname' => 'LBL_DATE_CHANGE',
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

$dictionary['bh_marketing_company_history']['fields']['company_status'] = array (
    'required' => false,
    'name' => 'company_status',
    'vname' => 'LBL_COMPANY_STATUS',
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
    'options' => 'company_status_list',
    'studio' => 'visible',
    'size' => '20',
);

$dictionary['bh_marketing_company_history']['fields']['company_end'] = array (
    'required' => false,
    'name' => 'company_end',
    'vname' => 'LBL_DATE_COMPANY_END',
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