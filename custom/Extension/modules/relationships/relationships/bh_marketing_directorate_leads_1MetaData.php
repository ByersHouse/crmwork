<?php
// created: 2017-10-04 12:59:22
$dictionary["bh_marketing_directorate_leads_1"] = array (
  'true_relationship_type' => 'many-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'bh_marketing_directorate_leads_1' => 
    array (
      'lhs_module' => 'bh_marketing_directorate',
      'lhs_table' => 'bh_marketing_directorate',
      'lhs_key' => 'id',
      'rhs_module' => 'Leads',
      'rhs_table' => 'leads',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_marketing_directorate_leads_1_c',
      'join_key_lhs' => 'bh_marketing_directorate_leads_1bh_marketing_directorate_ida',
      'join_key_rhs' => 'bh_marketing_directorate_leads_1leads_idb',
    ),
  ),
  'table' => 'bh_marketing_directorate_leads_1_c',
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
      'name' => 'bh_marketing_directorate_leads_1bh_marketing_directorate_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_marketing_directorate_leads_1leads_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_marketing_directorate_leads_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_marketing_directorate_leads_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_marketing_directorate_leads_1bh_marketing_directorate_ida',
        1 => 'bh_marketing_directorate_leads_1leads_idb',
      ),
    ),
  ),
);