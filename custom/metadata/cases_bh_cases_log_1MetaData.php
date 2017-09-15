<?php
// created: 2017-09-14 17:20:31
$dictionary["cases_bh_cases_log_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'cases_bh_cases_log_1' => 
    array (
      'lhs_module' => 'Cases',
      'lhs_table' => 'cases',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_cases_log',
      'rhs_table' => 'bh_cases_log',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'cases_bh_cases_log_1_c',
      'join_key_lhs' => 'cases_bh_cases_log_1cases_ida',
      'join_key_rhs' => 'cases_bh_cases_log_1bh_cases_log_idb',
    ),
  ),
  'table' => 'cases_bh_cases_log_1_c',
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
      'name' => 'cases_bh_cases_log_1cases_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'cases_bh_cases_log_1bh_cases_log_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'cases_bh_cases_log_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'cases_bh_cases_log_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'cases_bh_cases_log_1cases_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'cases_bh_cases_log_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'cases_bh_cases_log_1bh_cases_log_idb',
      ),
    ),
  ),
);