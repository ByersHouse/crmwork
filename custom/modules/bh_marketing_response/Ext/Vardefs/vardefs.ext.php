<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-20 09:26:15
$dictionary["bh_marketing_response"]["fields"]["bh_marketing_company_bh_marketing_response_1"] = array (
  'name' => 'bh_marketing_company_bh_marketing_response_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_response_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketi8c3ecompany_ida',
);
$dictionary["bh_marketing_response"]["fields"]["bh_marketing_company_bh_marketing_response_1_name"] = array (
  'name' => 'bh_marketing_company_bh_marketing_response_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketi8c3ecompany_ida',
  'link' => 'bh_marketing_company_bh_marketing_response_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_marketing_response"]["fields"]["bh_marketi8c3ecompany_ida"] = array (
  'name' => 'bh_marketi8c3ecompany_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_response_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
);


// created: 2017-09-20 12:08:12
$dictionary["bh_marketing_response"]["fields"]["cases_bh_marketing_response_1"] = array (
  'name' => 'cases_bh_marketing_response_1',
  'type' => 'link',
  'relationship' => 'cases_bh_marketing_response_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'vname' => 'LBL_CASES_BH_MARKETING_RESPONSE_1_FROM_CASES_TITLE',
  'id_name' => 'cases_bh_marketing_response_1cases_ida',
);
$dictionary["bh_marketing_response"]["fields"]["cases_bh_marketing_response_1_name"] = array (
  'name' => 'cases_bh_marketing_response_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CASES_BH_MARKETING_RESPONSE_1_FROM_CASES_TITLE',
  'save' => true,
  'id_name' => 'cases_bh_marketing_response_1cases_ida',
  'link' => 'cases_bh_marketing_response_1',
  'table' => 'cases',
  'module' => 'Cases',
  'rname' => 'name',
);
$dictionary["bh_marketing_response"]["fields"]["cases_bh_marketing_response_1cases_ida"] = array (
  'name' => 'cases_bh_marketing_response_1cases_ida',
  'type' => 'link',
  'relationship' => 'cases_bh_marketing_response_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CASES_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
);





$dictionary['bh_marketing_response']['fields']['response_date'] = array (
    'required' => false,
    'name' => 'response_date',
    'vname' => 'LBL_RESPONSE_DATE',
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

$dictionary['bh_marketing_response']['fields']['comment'] = array (
    'required' => false,
    'name' => 'comment',
    'vname' => 'LBL_RESPONSE_COMMENT',
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

$dictionary['bh_marketing_response']['fields']['response_type'] = array (
    'required' => false,
    'name' => 'response_type',
    'vname' => 'LBL_RESPONSE_TYPE',
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
    'options' => 'marketing_response_type_list',
    'studio' => 'visible',
    'size' => '20',
);

?>