<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-12 14:07:21
$dictionary["bh_scr_status_history"]["fields"]["bh_scr_status_history_bh_scripts"] = array (
  'name' => 'bh_scr_status_history_bh_scripts',
  'type' => 'link',
  'relationship' => 'bh_scr_status_history_bh_scripts',
  'source' => 'non-db',
  'module' => 'bh_scripts',
  'bean_name' => 'bh_scripts',
  'side' => 'right',
  'vname' => 'LBL_BH_SCR_STATUS_HISTORY_BH_SCRIPTS_FROM_BH_SCRIPTS_TITLE',
);


$dictionary["bh_scr_status_history"]["fields"]["bh_scr_status_history_comment"] = array (
    'required' => false,
    'name' => 'bh_scr_status_history_comment',
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
$dictionary["bh_scr_status_history"]["fields"]["bh_scr_status_history_date"] = array (
    'required' => false,
    'name' => 'bh_scr_status_history_date',
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
?>