<?php
// created: 2017-09-20 10:40:57
$dictionary["AOS_Contracts"]["fields"]["leads_aos_contracts_1"] = array (
  'name' => 'leads_aos_contracts_1',
  'type' => 'link',
  'relationship' => 'leads_aos_contracts_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_AOS_CONTRACTS_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_aos_contracts_1leads_ida',
);
$dictionary["AOS_Contracts"]["fields"]["leads_aos_contracts_1_name"] = array (
  'name' => 'leads_aos_contracts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_AOS_CONTRACTS_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_aos_contracts_1leads_ida',
  'link' => 'leads_aos_contracts_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["AOS_Contracts"]["fields"]["leads_aos_contracts_1leads_ida"] = array (
  'name' => 'leads_aos_contracts_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_aos_contracts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_AOS_CONTRACTS_1_FROM_AOS_CONTRACTS_TITLE',
);
