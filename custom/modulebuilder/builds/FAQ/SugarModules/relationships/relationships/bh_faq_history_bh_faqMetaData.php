<?php
// created: 2017-09-12 09:54:04
$dictionary["bh_faq_history_bh_faq"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'bh_faq_history_bh_faq' => 
    array (
      'lhs_module' => 'bh_faq',
      'lhs_table' => 'bh_faq',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_faq_history',
      'rhs_table' => 'bh_faq_history',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_faq_history_bh_faq_c',
      'join_key_lhs' => 'bh_faq_history_bh_faqbh_faq_ida',
      'join_key_rhs' => 'bh_faq_history_bh_faqbh_faq_history_idb',
    ),
  ),
  'table' => 'bh_faq_history_bh_faq_c',
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
      'name' => 'bh_faq_history_bh_faqbh_faq_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_faq_history_bh_faqbh_faq_history_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_faq_history_bh_faqspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_faq_history_bh_faq_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_faq_history_bh_faqbh_faq_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_faq_history_bh_faq_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_faq_history_bh_faqbh_faq_history_idb',
      ),
    ),
  ),
);