<?php
// created: 2017-10-05 15:31:10
$dictionary["bh_marketing_company_bh_scripts_1"] = array (
  'true_relationship_type' => 'one-to-one',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_marketing_company_bh_scripts_1' => 
    array (
      'lhs_module' => 'bh_marketing_company',
      'lhs_table' => 'bh_marketing_company',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_scripts',
      'rhs_table' => 'bh_scripts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_marketing_company_bh_scripts_1_c',
      'join_key_lhs' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
      'join_key_rhs' => 'bh_marketing_company_bh_scripts_1bh_scripts_idb',
    ),
  ),
  'table' => 'bh_marketing_company_bh_scripts_1_c',
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
      'name' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_marketing_company_bh_scripts_1bh_scripts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_marketing_company_bh_scripts_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_marketing_company_bh_scripts_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_marketing_company_bh_scripts_1_idb2',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_marketing_company_bh_scripts_1bh_scripts_idb',
      ),
    ),
  ),
);