<?php
// created: 2017-09-22 10:39:50
$dictionary["bh_region_bh_region_area_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_region_bh_region_area_1' => 
    array (
      'lhs_module' => 'bh_region',
      'lhs_table' => 'bh_region',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_region_area',
      'rhs_table' => 'bh_region_area',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_region_bh_region_area_1_c',
      'join_key_lhs' => 'bh_region_bh_region_area_1bh_region_ida',
      'join_key_rhs' => 'bh_region_bh_region_area_1bh_region_area_idb',
    ),
  ),
  'table' => 'bh_region_bh_region_area_1_c',
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
      'name' => 'bh_region_bh_region_area_1bh_region_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_region_bh_region_area_1bh_region_area_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_region_bh_region_area_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_region_bh_region_area_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_region_bh_region_area_1bh_region_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_region_bh_region_area_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_region_bh_region_area_1bh_region_area_idb',
      ),
    ),
  ),
);