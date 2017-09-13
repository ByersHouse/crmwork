<?php
// created: 2017-09-13 14:50:18
$dictionary["bh_providers_bh_org_trade_points_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_providers_bh_org_trade_points_1' => 
    array (
      'lhs_module' => 'bh_providers',
      'lhs_table' => 'bh_providers',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_org_trade_points',
      'rhs_table' => 'bh_org_trade_points',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_providers_bh_org_trade_points_1_c',
      'join_key_lhs' => 'bh_providers_bh_org_trade_points_1bh_providers_ida',
      'join_key_rhs' => 'bh_providers_bh_org_trade_points_1bh_org_trade_points_idb',
    ),
  ),
  'table' => 'bh_providers_bh_org_trade_points_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'bh_providers_bh_org_trade_points_1bh_providers_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_providers_bh_org_trade_points_1bh_org_trade_points_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_providers_bh_org_trade_points_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_providers_bh_org_trade_points_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_providers_bh_org_trade_points_1bh_providers_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_providers_bh_org_trade_points_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_providers_bh_org_trade_points_1bh_org_trade_points_idb',
      ),
    ),
  ),
);