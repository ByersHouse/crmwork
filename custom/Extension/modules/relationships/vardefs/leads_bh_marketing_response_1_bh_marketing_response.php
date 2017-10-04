<?php
// created: 2017-10-04 11:34:22
$dictionary["bh_marketing_response"]["fields"]["leads_bh_marketing_response_1"] = array (
  'name' => 'leads_bh_marketing_response_1',
  'type' => 'link',
  'relationship' => 'leads_bh_marketing_response_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_bh_marketing_response_1leads_ida',
);
$dictionary["bh_marketing_response"]["fields"]["leads_bh_marketing_response_1_name"] = array (
  'name' => 'leads_bh_marketing_response_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_bh_marketing_response_1leads_ida',
  'link' => 'leads_bh_marketing_response_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_marketing_response"]["fields"]["leads_bh_marketing_response_1leads_ida"] = array (
  'name' => 'leads_bh_marketing_response_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_bh_marketing_response_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
);
