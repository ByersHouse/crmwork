<?php
// created: 2017-09-21 15:18:33
$dictionary["leads_leads_2"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'leads_leads_2' => 
    array (
      'lhs_module' => 'Leads',
      'lhs_table' => 'leads',
      'lhs_key' => 'id',
      'rhs_module' => 'Leads',
      'rhs_table' => 'leads',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'leads_leads_2_c',
      'join_key_lhs' => 'leads_leads_2leads_ida',
      'join_key_rhs' => 'leads_leads_2leads_idb',
    ),
  ),
  'table' => 'leads_leads_2_c',
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
      'name' => 'leads_leads_2leads_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'leads_leads_2leads_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'leads_leads_2spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'leads_leads_2_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'leads_leads_2leads_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'leads_leads_2_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'leads_leads_2leads_idb',
      ),
    ),
  ),
);