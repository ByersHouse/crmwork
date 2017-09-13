<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-13 09:52:18
$dictionary["bh_org_trade_points"]["fields"]["bh_providers_bh_org_trade_points_1"] = array (
  'name' => 'bh_providers_bh_org_trade_points_1',
  'type' => 'link',
  'relationship' => 'bh_providers_bh_org_trade_points_1',
  'source' => 'non-db',
  'module' => 'bh_providers',
  'bean_name' => 'bh_providers',
  'vname' => 'LBL_BH_PROVIDERS_BH_ORG_TRADE_POINTS_1_FROM_BH_PROVIDERS_TITLE',
  'id_name' => 'bh_providers_bh_org_trade_points_1bh_providers_ida',
);
$dictionary["bh_org_trade_points"]["fields"]["bh_providers_bh_org_trade_points_1_name"] = array (
  'name' => 'bh_providers_bh_org_trade_points_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_PROVIDERS_BH_ORG_TRADE_POINTS_1_FROM_BH_PROVIDERS_TITLE',
  'save' => true,
  'id_name' => 'bh_providers_bh_org_trade_points_1bh_providers_ida',
  'link' => 'bh_providers_bh_org_trade_points_1',
  'table' => 'bh_providers',
  'module' => 'bh_providers',
  'rname' => 'name',
);
$dictionary["bh_org_trade_points"]["fields"]["bh_providers_bh_org_trade_points_1bh_providers_ida"] = array (
  'name' => 'bh_providers_bh_org_trade_points_1bh_providers_ida',
  'type' => 'link',
  'relationship' => 'bh_providers_bh_org_trade_points_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_PROVIDERS_BH_ORG_TRADE_POINTS_1_FROM_BH_ORG_TRADE_POINTS_TITLE',
);

?>