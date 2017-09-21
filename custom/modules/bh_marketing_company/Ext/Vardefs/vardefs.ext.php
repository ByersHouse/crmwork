<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-20 09:44:29
$dictionary["bh_marketing_company"]["fields"]["bh_marketing_company_bh_marketing_directorate_1"] = array (
  'name' => 'bh_marketing_company_bh_marketing_directorate_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_directorate_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_directorate',
  'bean_name' => 'bh_marketing_directorate',
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_DIRECTORATE_1_FROM_BH_MARKETING_DIRECTORATE_TITLE',
);


// created: 2017-09-20 09:26:15
$dictionary["bh_marketing_company"]["fields"]["bh_marketing_company_bh_marketing_response_1"] = array (
  'name' => 'bh_marketing_company_bh_marketing_response_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_response_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_response',
  'bean_name' => 'bh_marketing_response',
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
);





$dictionary['bh_marketing_company']['fields']['start'] = array (
    'required' => false,
    'name' => 'start',
    'vname' => 'LBL_DATE_START',
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

$dictionary['bh_marketing_company']['fields']['end'] = array (
    'required' => false,
    'name' => 'end',
    'vname' => 'LBL_DATE_END',
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

$dictionary['bh_marketing_company']['fields']['company_status'] = array (
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

$dictionary['bh_marketing_company']['fields']['company_type'] = array (
    'required' => false,
    'name' => 'company_type',
    'vname' => 'LBL_COMPANY_TYPE',
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
    'options' => 'marketing_company_type_list',
    'studio' => 'visible',
    'size' => '20',
);

$dictionary['bh_marketing_company']['fields']['marketing_offer'] = array (
    'required' => false,
    'name' => 'marketing_offer',
    'vname' => 'LBL_MARKETING_OFFER',
    'type' => 'text',
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

$dictionary['bh_marketing_company']['fields']['impact_type'] = array (
    'required' => false,
    'name' => 'impact_type',
    'vname' => 'LBL_IMPACT_TYPE',
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
    'options' => 'marketing_impact_type_list',
    'studio' => 'visible',
    'size' => '20',
);
?>