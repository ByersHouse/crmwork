<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-13 15:33:14
$dictionary["bh_script_param_response"]["fields"]["bh_scripts_bh_script_param_response_1"] = array (
  'name' => 'bh_scripts_bh_script_param_response_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_script_param_response_1',
  'source' => 'non-db',
  'module' => 'bh_scripts',
  'bean_name' => 'bh_scripts',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPT_PARAM_RESPONSE_1_FROM_BH_SCRIPTS_TITLE',
  'id_name' => 'bh_scripts_bh_script_param_response_1bh_scripts_ida',
);
$dictionary["bh_script_param_response"]["fields"]["bh_scripts_bh_script_param_response_1_name"] = array (
  'name' => 'bh_scripts_bh_script_param_response_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPT_PARAM_RESPONSE_1_FROM_BH_SCRIPTS_TITLE',
  'save' => true,
  'id_name' => 'bh_scripts_bh_script_param_response_1bh_scripts_ida',
  'link' => 'bh_scripts_bh_script_param_response_1',
  'table' => 'bh_scripts',
  'module' => 'bh_scripts',
  'rname' => 'name',
);
$dictionary["bh_script_param_response"]["fields"]["bh_scripts_bh_script_param_response_1bh_scripts_ida"] = array (
  'name' => 'bh_scripts_bh_script_param_response_1bh_scripts_ida',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_script_param_response_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPT_PARAM_RESPONSE_1_FROM_BH_SCRIPT_PARAM_RESPONSE_TITLE',
);


$dictionary["bh_script_param_response"]["fields"]["bh_script_param_response_type"] = array (
    'required' => false,
    'name' => 'bh_script_param_response_type',
    'vname' => 'LBL_RESPONSE_TYPE',
    'type' => 'enum',
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
    'options' => 'bh_script_param_response_type_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary["bh_script_param_response"]["fields"]["bh_script_param_response_date"] = array (
    'required' => false,
    'name' => 'bh_script_param_response_date',
    'vname' => 'LBL_RESPONSE_DATE',
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

$dictionary["bh_script_param_response"]["fields"]["bh_script_param_response_comment"] = array (
    'required' => false,
    'name' => 'bh_script_param_response_comment',
    'vname' => 'LBL_RESPONSE_COMMENT',
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