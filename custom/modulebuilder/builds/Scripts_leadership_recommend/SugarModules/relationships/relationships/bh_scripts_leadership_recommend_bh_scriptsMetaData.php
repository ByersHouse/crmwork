<?php
// created: 2017-09-15 09:10:26
$dictionary["bh_scripts_leadership_recommend_bh_scripts"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'bh_scripts_leadership_recommend_bh_scripts' => 
    array (
      'lhs_module' => 'bh_Scripts_leadership_recommend',
      'lhs_table' => 'bh_scripts_leadership_recommend',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_scripts',
      'rhs_table' => 'bh_scripts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bh_scripts_leadership_recommend_bh_scripts_c',
      'join_key_lhs' => 'bh_scriptsfdbacommend_ida',
      'join_key_rhs' => 'bh_scripts_leadership_recommend_bh_scriptsbh_scripts_idb',
    ),
  ),
  'table' => 'bh_scripts_leadership_recommend_bh_scripts_c',
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
      'name' => 'bh_scriptsfdbacommend_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bh_scripts_leadership_recommend_bh_scriptsbh_scripts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bh_scripts_leadership_recommend_bh_scriptsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bh_scripts_leadership_recommend_bh_scripts_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bh_scriptsfdbacommend_ida',
        1 => 'bh_scripts_leadership_recommend_bh_scriptsbh_scripts_idb',
      ),
    ),
  ),
);