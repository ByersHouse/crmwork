<?php

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

$dictionary['bh_cases_log']['fields']['comment'] = array (
    'required' => false,
    'name' => 'comment',
    'vname' => 'LBL_LOG_COMMENT',
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

$dictionary['bh_cases_log']['fields']['case_status'] = array (
    'required' => false,
    'name' => 'case_status',
    'vname' => 'LBL_CASE_STATUS',
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
    'options' => 'case_status_list',
    'studio' => 'visible',
    'dependency' => false,
);