<?php
// created: 2017-09-22 10:34:21
$dictionary["bh_country_bh_region_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_country_bh_region_1' => 
    array (
      'lhs_module' => 'bh_country',
      'lhs_table' => 'bh_country',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_region',
      'rhs_table' => 'bh_region',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_country_bh_region_1_c',
      'join_key_lhs' => 'bh_country_bh_region_1bh_country_ida',
      'join_key_rhs' => 'bh_country_bh_region_1bh_region_idb',
    ),
  ),
  'table' => 'bh_country_bh_region_1_c',
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
      'name' => 'bh_country_bh_region_1bh_country_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_country_bh_region_1bh_region_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_country_bh_region_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_country_bh_region_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_country_bh_region_1bh_country_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_country_bh_region_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_country_bh_region_1bh_region_idb',
      ),
    ),
  ),
);