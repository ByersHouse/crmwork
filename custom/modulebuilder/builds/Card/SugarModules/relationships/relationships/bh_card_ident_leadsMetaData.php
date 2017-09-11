<?php
// created: 2017-09-11 10:02:05
$dictionary["bh_card_ident_leads"] = array (
  'true_relationship_type' => 'one-to-one',
  'relationships' => 
  array (
    'bh_card_ident_leads' => 
    array (
      'lhs_module' => 'bh_Card_ident',
      'lhs_table' => 'bh_card_ident',
      'lhs_key' => 'id',
      'rhs_module' => 'Leads',
      'rhs_table' => 'leads',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_card_ident_leads_c',
      'join_key_lhs' => 'bh_card_ident_leadsbh_card_ident_ida',
      'join_key_rhs' => 'bh_card_ident_leadsleads_idb',
    ),
  ),
  'table' => 'bh_card_ident_leads_c',
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
      'name' => 'bh_card_ident_leadsbh_card_ident_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_card_ident_leadsleads_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_card_ident_leadsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_card_ident_leads_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_card_ident_leadsbh_card_ident_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_card_ident_leads_idb2',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_card_ident_leadsleads_idb',
      ),
    ),
  ),
);