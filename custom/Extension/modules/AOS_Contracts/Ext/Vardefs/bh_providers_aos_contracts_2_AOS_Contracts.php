<?php
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
