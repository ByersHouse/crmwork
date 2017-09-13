<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-13 15:30:57
$dictionary["bh_scripts"]["fields"]["bh_scripts_bh_scripts_employee_comment_1"] = array (
  'name' => 'bh_scripts_bh_scripts_employee_comment_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scripts_employee_comment_1',
  'source' => 'non-db',
  'module' => 'bh_Scripts_employee_comment',
  'bean_name' => 'bh_Scripts_employee_comment',
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_EMPLOYEE_COMMENT_1_FROM_BH_SCRIPTS_EMPLOYEE_COMMENT_TITLE',
);


// created: 2017-09-13 15:33:14
$dictionary["bh_scripts"]["fields"]["bh_scripts_bh_script_param_response_1"] = array (
  'name' => 'bh_scripts_bh_script_param_response_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_script_param_response_1',
  'source' => 'non-db',
  'module' => 'bh_script_param_response',
  'bean_name' => 'bh_script_param_response',
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPT_PARAM_RESPONSE_1_FROM_BH_SCRIPT_PARAM_RESPONSE_TITLE',
);


// created: 2017-09-13 15:34:50
$dictionary["bh_scripts"]["fields"]["bh_scripts_bh_scr_status_history_1"] = array (
  'name' => 'bh_scripts_bh_scr_status_history_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scr_status_history_1',
  'source' => 'non-db',
  'module' => 'bh_scr_status_history',
  'bean_name' => 'bh_scr_status_history',
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCR_STATUS_HISTORY_1_FROM_BH_SCR_STATUS_HISTORY_TITLE',
);


$dictionary['bh_scripts']['fields']['script_status'] = array (
         'required' => false,
          'name' => 'script_status',
          'vname' => 'LBL_SCRIPT_STATUS',
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
          'options' => 'script_status_list',
          'studio' => 'visible',
          'size' => '20',
          'enable_range_search' => false,
    );

$dictionary['bh_scripts']['fields']['script_type'] = array (
    'required' => false,
    'name' => 'script_type',
    'vname' => 'LBL_SCRIPT_TYPE',
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
    'options' => 'script_type_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_scripts']['fields']['script_impact'] = array (
    'required' => false,
    'name' => 'script_impact',
    'vname' => 'LBL_SCRIPT_IMPACT',
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
    'options' => 'script_impact_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);
$dictionary['bh_scripts']['fields']['script_date_activation'] = array (
    'required' => false,
    'name' => 'script_date_activation',
    'vname' => 'LBL_DATE_ACTIVATION',
    'type' => 'datetimecombo',
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
$dictionary['bh_scripts']['fields']['script_date_deactivation'] = array (
    'required' => false,
    'name' => 'script_date_deactivation',
    'vname' => 'LBL_DATE_DEACTIVATION',
    'type' => 'datetimecombo',
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

$dictionary['bh_scripts']['fields']['script_rate_effort'] = array (
    'required' => false,
    'name' => 'script_rate_effort',
    'vname' => 'LBL_RATE_EFFORT',
    'type' => 'int',
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