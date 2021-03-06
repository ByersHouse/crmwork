<?php
// created: 2017-09-12 17:25:03
$dictionary["bh_providers_aos_contracts_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_providers_aos_contracts_1' => 
    array (
      'lhs_module' => 'bh_providers',
      'lhs_table' => 'bh_providers',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Contracts',
      'rhs_table' => 'aos_contracts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_providers_aos_contracts_1_c',
      'join_key_lhs' => 'bh_providers_aos_contracts_1bh_providers_ida',
      'join_key_rhs' => 'bh_providers_aos_contracts_1aos_contracts_idb',
    ),
  ),
  'table' => 'bh_providers_aos_contracts_1_c',
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
      'name' => 'bh_providers_aos_contracts_1bh_providers_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_providers_aos_contracts_1aos_contracts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_providers_aos_contracts_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_providers_aos_contracts_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_providers_aos_contracts_1bh_providers_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_providers_aos_contracts_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_providers_aos_contracts_1aos_contracts_idb',
      ),
    ),
  ),
);