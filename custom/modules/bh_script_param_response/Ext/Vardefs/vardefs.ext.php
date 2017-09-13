<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-12 14:18:48
$dictionary["bh_script_param_response"]["fields"]["bh_script_param_response_bh_scripts"] = array (
  'name' => 'bh_script_param_response_bh_scripts',
  'type' => 'link',
  'relationship' => 'bh_script_param_response_bh_scripts',
  'source' => 'non-db',
  'module' => 'bh_scripts',
  'bean_name' => 'bh_scripts',
  'vname' => 'LBL_BH_SCRIPT_PARAM_RESPONSE_BH_SCRIPTS_FROM_BH_SCRIPTS_TITLE',
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