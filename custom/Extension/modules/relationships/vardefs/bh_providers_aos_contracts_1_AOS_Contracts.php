<?php
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
