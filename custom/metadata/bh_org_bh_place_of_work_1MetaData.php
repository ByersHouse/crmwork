<?php
// created: 2017-09-21 17:27:56
$dictionary["bh_org_bh_place_of_work_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_org_bh_place_of_work_1' => 
    array (
      'lhs_module' => 'bh_org',
      'lhs_table' => 'bh_org',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_place_of_work',
      'rhs_table' => 'bh_place_of_work',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_org_bh_place_of_work_1_c',
      'join_key_lhs' => 'bh_org_bh_place_of_work_1bh_org_ida',
      'join_key_rhs' => 'bh_org_bh_place_of_work_1bh_place_of_work_idb',
    ),
  ),
  'table' => 'bh_org_bh_place_of_work_1_c',
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
      'name' => 'bh_org_bh_place_of_work_1bh_org_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_org_bh_place_of_work_1bh_place_of_work_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_org_bh_place_of_work_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_org_bh_place_of_work_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_org_bh_place_of_work_1bh_org_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_org_bh_place_of_work_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_org_bh_place_of_work_1bh_place_of_work_idb',
      ),
    ),
  ),
);