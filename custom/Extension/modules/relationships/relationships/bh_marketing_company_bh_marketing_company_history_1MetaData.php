<?php
// created: 2017-10-03 11:58:38
$dictionary["bh_marketing_company_bh_marketing_company_history_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_marketing_company_bh_marketing_company_history_1' => 
    array (
      'lhs_module' => 'bh_marketing_company',
      'lhs_table' => 'bh_marketing_company',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_marketing_company_history',
      'rhs_table' => 'bh_marketing_company_history',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_marketing_company_bh_marketing_company_history_1_c',
      'join_key_lhs' => 'bh_marketi1e9fcompany_ida',
      'join_key_rhs' => 'bh_marketid398history_idb',
    ),
  ),
  'table' => 'bh_marketing_company_bh_marketing_company_history_1_c',
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
      'name' => 'bh_marketi1e9fcompany_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_marketid398history_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_marketing_company_bh_marketing_company_history_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_marketing_company_bh_marketing_company_history_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_marketi1e9fcompany_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_marketing_company_bh_marketing_company_history_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_marketid398history_idb',
      ),
    ),
  ),
);