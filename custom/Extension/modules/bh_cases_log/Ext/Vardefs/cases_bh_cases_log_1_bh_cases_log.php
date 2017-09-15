<?php
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
