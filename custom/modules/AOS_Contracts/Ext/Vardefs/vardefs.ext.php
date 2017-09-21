<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-12 17:25:05
$dictionary["AOS_Contracts"]["fields"]["bh_providers_aos_contracts_1"] = array (
  'name' => 'bh_providers_aos_contracts_1',
  'type' => 'link',
  'relationship' => 'bh_providers_aos_contracts_1',
  'source' => 'non-db',
  'module' => 'bh_providers',
  'bean_name' => 'bh_providers',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_1_FROM_BH_PROVIDERS_TITLE',
  'id_name' => 'bh_providers_aos_contracts_1bh_providers_ida',
);
$dictionary["AOS_Contracts"]["fields"]["bh_providers_aos_contracts_1_name"] = array (
  'name' => 'bh_providers_aos_contracts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_1_FROM_BH_PROVIDERS_TITLE',
  'save' => true,
  'id_name' => 'bh_providers_aos_contracts_1bh_providers_ida',
  'link' => 'bh_providers_aos_contracts_1',
  'table' => 'bh_providers',
  'module' => 'bh_providers',
  'rname' => 'name',
);
$dictionary["AOS_Contracts"]["fields"]["bh_providers_aos_contracts_1bh_providers_ida"] = array (
  'name' => 'bh_providers_aos_contracts_1bh_providers_ida',
  'type' => 'link',
  'relationship' => 'bh_providers_aos_contracts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_1_FROM_AOS_CONTRACTS_TITLE',
);


// created: 2017-09-13 11:38:55
$dictionary["AOS_Contracts"]["fields"]["bh_providers_aos_contracts_2"] = array (
  'name' => 'bh_providers_aos_contracts_2',
  'type' => 'link',
  'relationship' => 'bh_providers_aos_contracts_2',
  'source' => 'non-db',
  'module' => 'bh_providers',
  'bean_name' => 'bh_providers',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_2_FROM_BH_PROVIDERS_TITLE',
  'id_name' => 'bh_providers_aos_contracts_2bh_providers_ida',
);
$dictionary["AOS_Contracts"]["fields"]["bh_providers_aos_contracts_2_name"] = array (
  'name' => 'bh_providers_aos_contracts_2_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_2_FROM_BH_PROVIDERS_TITLE',
  'save' => true,
  'id_name' => 'bh_providers_aos_contracts_2bh_providers_ida',
  'link' => 'bh_providers_aos_contracts_2',
  'table' => 'bh_providers',
  'module' => 'bh_providers',
  'rname' => 'name',
);
$dictionary["AOS_Contracts"]["fields"]["bh_providers_aos_contracts_2bh_providers_ida"] = array (
  'name' => 'bh_providers_aos_contracts_2bh_providers_ida',
  'type' => 'link',
  'relationship' => 'bh_providers_aos_contracts_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_2_FROM_AOS_CONTRACTS_TITLE',
);


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

?>