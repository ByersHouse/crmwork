<?php 
 //WARNING: The contents of this file are auto-generated



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