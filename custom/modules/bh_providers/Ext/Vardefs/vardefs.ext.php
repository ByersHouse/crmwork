<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-12 17:25:05
$dictionary["bh_providers"]["fields"]["bh_providers_aos_contracts_1"] = array (
  'name' => 'bh_providers_aos_contracts_1',
  'type' => 'link',
  'relationship' => 'bh_providers_aos_contracts_1',
  'source' => 'non-db',
  'module' => 'AOS_Contracts',
  'bean_name' => 'AOS_Contracts',
  'side' => 'right',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_1_FROM_AOS_CONTRACTS_TITLE',
);


// created: 2017-09-13 11:38:55
$dictionary["bh_providers"]["fields"]["bh_providers_aos_contracts_2"] = array (
  'name' => 'bh_providers_aos_contracts_2',
  'type' => 'link',
  'relationship' => 'bh_providers_aos_contracts_2',
  'source' => 'non-db',
  'module' => 'AOS_Contracts',
  'bean_name' => 'AOS_Contracts',
  'side' => 'right',
  'vname' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_2_FROM_AOS_CONTRACTS_TITLE',
);


// created: 2017-09-13 14:50:23
$dictionary["bh_providers"]["fields"]["bh_providers_bh_org_trade_points_1"] = array (
  'name' => 'bh_providers_bh_org_trade_points_1',
  'type' => 'link',
  'relationship' => 'bh_providers_bh_org_trade_points_1',
  'source' => 'non-db',
  'module' => 'bh_org_trade_points',
  'bean_name' => 'bh_org_trade_points',
  'side' => 'right',
  'vname' => 'LBL_BH_PROVIDERS_BH_ORG_TRADE_POINTS_1_FROM_BH_ORG_TRADE_POINTS_TITLE',
);



$dictionary['bh_providers']['fields']['provider_status'] = array (
      'required' => false,
      'name' => 'provider_status',
      'vname' => 'LBL_PROVIDER_STATUS',
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
      'options' => 'provider_status_list',
      'studio' => 'visible',
      'size' => '20',
      'len' =>'10',
      'enable_range_search' => false,
);


$dictionary['bh_providers']['fields']['date_activation'] = array (
      'required' => false,
      'name' => 'date_activation',
      'vname' => 'LBL_DATE_ACTIVATION',
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
?>