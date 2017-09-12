<?php
// created: 2017-09-12 14:07:20
$dictionary["bh_scr_status_history_bh_scripts"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'bh_scr_status_history_bh_scripts' => 
    array (
      'lhs_module' => 'bh_scr_status_history',
      'lhs_table' => 'bh_scr_status_history',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_scripts',
      'rhs_table' => 'bh_scripts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_scr_status_history_bh_scripts_c',
      'join_key_lhs' => 'bh_scr_status_history_bh_scriptsbh_scr_status_history_ida',
      'join_key_rhs' => 'bh_scr_status_history_bh_scriptsbh_scripts_idb',
    ),
  ),
  'table' => 'bh_scr_status_history_bh_scripts_c',
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
      'name' => 'bh_scr_status_history_bh_scriptsbh_scr_status_history_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_scr_status_history_bh_scriptsbh_scripts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_scr_status_history_bh_scriptsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_scr_status_history_bh_scripts_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bh_scr_status_history_bh_scriptsbh_scr_status_history_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bh_scr_status_history_bh_scripts_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_scr_status_history_bh_scriptsbh_scripts_idb',
      ),
    ),
  ),
);