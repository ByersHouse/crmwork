<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-14 17:20:33
$dictionary["bh_cases_log"]["fields"]["cases_bh_cases_log_1"] = array (
  'name' => 'cases_bh_cases_log_1',
  'type' => 'link',
  'relationship' => 'cases_bh_cases_log_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'vname' => 'LBL_CASES_BH_CASES_LOG_1_FROM_CASES_TITLE',
  'id_name' => 'cases_bh_cases_log_1cases_ida',
);
$dictionary["bh_cases_log"]["fields"]["cases_bh_cases_log_1_name"] = array (
  'name' => 'cases_bh_cases_log_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CASES_BH_CASES_LOG_1_FROM_CASES_TITLE',
  'save' => true,
  'id_name' => 'cases_bh_cases_log_1cases_ida',
  'link' => 'cases_bh_cases_log_1',
  'table' => 'cases',
  'module' => 'Cases',
  'rname' => 'name',
);
$dictionary["bh_cases_log"]["fields"]["cases_bh_cases_log_1cases_ida"] = array (
  'name' => 'cases_bh_cases_log_1cases_ida',
  'type' => 'link',
  'relationship' => 'cases_bh_cases_log_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CASES_BH_CASES_LOG_1_FROM_BH_CASES_LOG_TITLE',
);



$dictionary["bh_cases_log"]["fields"]["case_channel"] = array (
       'required' => false,
       'name' => 'case_channel',
       'vname' => 'LBL_CASE_CHANNEL',
       'type' => 'enum',
       'massupdate' => 0,
       'no_default' => false,
       'comments' => '',
       'help' => '',
       'importable' => 'true',
       'duplicate_merge' => 'disabled',
       'duplicate_merge_dom_value' => '0',
       'audited' => false,
       'inline_edit' => '',
       'reportable' => true,
       'unified_search' => false,
       'merge_filter' => 'disabled',
       'len' => 15,
       'size' => '20',
       'options' => 'cases_log_channel_list',
       'studio' => 'visible',
       'dependency' => false,
);

$dictionary['bh_cases_log']['fields']['start'] = array (
      'required' => false,
      'name' => 'start',
      'vname' => 'LBL_DATE_START',
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

$dictionary['bh_cases_log']['fields']['finish'] = array (
      'required' => false,
      'name' => 'finish',
      'vname' => 'LBL_DATE_FINISH',
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
?>