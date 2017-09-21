<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-14 17:20:33
$dictionary["Case"]["fields"]["cases_bh_cases_log_1"] = array (
  'name' => 'cases_bh_cases_log_1',
  'type' => 'link',
  'relationship' => 'cases_bh_cases_log_1',
  'source' => 'non-db',
  'module' => 'bh_cases_log',
  'bean_name' => 'bh_cases_log',
  'side' => 'right',
  'vname' => 'LBL_CASES_BH_CASES_LOG_1_FROM_BH_CASES_LOG_TITLE',
);


// created: 2017-09-20 11:38:59
$dictionary["Case"]["fields"]["cases_bh_case_compound_1"] = array (
  'name' => 'cases_bh_case_compound_1',
  'type' => 'link',
  'relationship' => 'cases_bh_case_compound_1',
  'source' => 'non-db',
  'module' => 'bh_case_compound',
  'bean_name' => 'bh_case_compound',
  'side' => 'right',
  'vname' => 'LBL_CASES_BH_CASE_COMPOUND_1_FROM_BH_CASE_COMPOUND_TITLE',
);


// created: 2017-09-20 12:08:12
$dictionary["Case"]["fields"]["cases_bh_marketing_response_1"] = array (
  'name' => 'cases_bh_marketing_response_1',
  'type' => 'link',
  'relationship' => 'cases_bh_marketing_response_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_response',
  'bean_name' => 'bh_marketing_response',
  'side' => 'right',
  'vname' => 'LBL_CASES_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
);



$dictionary['Case']['fields']['case_view'] = array (
       'required' => false,
       'name' => 'case_view',
       'vname' => 'LBL_CASE_VIEW',
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
       'len' => 50,
       'size' => '20',
       'options' => 'case_view_list',
       'studio' => 'visible',
       'dependency' => false,
);

$dictionary['Case']['fields']['case_type'] = array (
       'required' => false,
       'name' => 'case_type',
       'vname' => 'LBL_CASE_TYPE',
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
       'len' => 15,
       'size' => '20',
       'options' => 'case_type_list',
       'studio' => 'visible',
       'dependency' => false,
);


$dictionary['Case']['fields']['case_status'] = array (
       'required' => false,
       'name' => 'case_status',
       'vname' => 'LBL_CASE_STATUS',
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
       'len' => 15,
       'size' => '20',
       'options' => 'case_status_list',
       'studio' => 'visible',
       'dependency' => false,
);

$dictionary['Case']['fields']['result_comment'] = array (
    'required' => false,
    'name' => 'result_comment',
    'vname' => 'LBL_RESULT_COMMENT',
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



// created: 2017-09-14 09:55:28
$dictionary["Case"]["fields"]["leads_cases_1"] = array (
  'name' => 'leads_cases_1',
  'type' => 'link',
  'relationship' => 'leads_cases_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_CASES_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_cases_1leads_ida',
);
$dictionary["Case"]["fields"]["leads_cases_1_name"] = array (
  'name' => 'leads_cases_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_CASES_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_cases_1leads_ida',
  'link' => 'leads_cases_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Case"]["fields"]["leads_cases_1leads_ida"] = array (
  'name' => 'leads_cases_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_cases_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_CASES_1_FROM_CASES_TITLE',
);


 // created: 2017-09-03 11:24:48
$dictionary['Case']['fields']['jjwg_maps_address_c']['inline_edit']=1;

 

 // created: 2017-09-03 11:24:48
$dictionary['Case']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2017-09-03 11:24:48
$dictionary['Case']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

 // created: 2017-09-03 11:24:48
$dictionary['Case']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 
?>