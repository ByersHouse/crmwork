<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-15 12:04:22
$dictionary["bh_Scripts_leadership_recommend"]["fields"]["bh_scripts_bh_scripts_leadership_recommend_1"] = array (
  'name' => 'bh_scripts_bh_scripts_leadership_recommend_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scripts_leadership_recommend_1',
  'source' => 'non-db',
  'module' => 'bh_scripts',
  'bean_name' => 'bh_scripts',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_LEADERSHIP_RECOMMEND_1_FROM_BH_SCRIPTS_TITLE',
  'id_name' => 'bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida',
);
$dictionary["bh_Scripts_leadership_recommend"]["fields"]["bh_scripts_bh_scripts_leadership_recommend_1_name"] = array (
  'name' => 'bh_scripts_bh_scripts_leadership_recommend_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_LEADERSHIP_RECOMMEND_1_FROM_BH_SCRIPTS_TITLE',
  'save' => true,
  'id_name' => 'bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida',
  'link' => 'bh_scripts_bh_scripts_leadership_recommend_1',
  'table' => 'bh_scripts',
  'module' => 'bh_scripts',
  'rname' => 'name',
);
$dictionary["bh_Scripts_leadership_recommend"]["fields"]["bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida"] = array (
  'name' => 'bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scripts_leadership_recommend_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_LEADERSHIP_RECOMMEND_1_FROM_BH_SCRIPTS_LEADERSHIP_RECOMMEND_TITLE',
);



$dictionary["bh_Scripts_leadership_recommend"]["fields"]["recommend_date"] = array (
    'required' => false,
    'name' => 'recommend_date',
    'vname' => 'LBL_RECOMMEND_DATE',
    'type' => 'date',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary["bh_Scripts_leadership_recommend"]["fields"]["recommend_text"] = array (
    'required' => false,
    'name' => 'recommend_text',
    'vname' => 'LBL_RECOMMEND_TEXT',
    'type' => 'text',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);
?>