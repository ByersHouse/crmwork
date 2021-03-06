<?php
// created: 2017-09-22 12:47:30
$dictionary["bh_passports_bh_country_1"] = array (
  'true_relationship_type' => 'one-to-one',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_passports_bh_country_1' => 
    array (
      'lhs_module' => 'bh_passports',
      'lhs_table' => 'bh_passports',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_country',
      'rhs_table' => 'bh_country',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_passports_bh_country_1_c',
      'join_key_lhs' => 'bh_passports_bh_country_1bh_passports_ida',
      'join_key_rhs' => 'bh_passports_bh_country_1bh_country_idb',
    ),
  ),
  'table' => 'bh_passports_bh_country_1_c',
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
      'name' => 'bh_passports_bh_country_1bh_passports_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_passports_bh_country_1bh_country_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_passports_bh_country_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_passports_bh_country_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_passports_bh_country_1bh_passports_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_passports_bh_country_1_idb2',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_passports_bh_country_1bh_country_idb',
      ),
    ),
  ),
);