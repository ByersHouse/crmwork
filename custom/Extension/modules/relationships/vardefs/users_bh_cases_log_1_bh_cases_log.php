<?php
// created: 2017-09-15 17:36:01
$dictionary["bh_cases_log"]["fields"]["users_bh_cases_log_1"] = array (
  'name' => 'users_bh_cases_log_1',
  'type' => 'link',
  'relationship' => 'users_bh_cases_log_1',
  'source' => 'non-db',
  'module' => 'Users',
  'bean_name' => 'User',
  'vname' => 'LBL_USERS_BH_CASES_LOG_1_FROM_USERS_TITLE',
  'id_name' => 'users_bh_cases_log_1users_ida',
);
$dictionary["bh_cases_log"]["fields"]["users_bh_cases_log_1_name"] = array (
  'name' => 'users_bh_cases_log_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_USERS_BH_CASES_LOG_1_FROM_USERS_TITLE',
  'save' => true,
  'id_name' => 'users_bh_cases_log_1users_ida',
  'link' => 'users_bh_cases_log_1',
  'table' => 'users',
  'module' => 'Users',
  'rname' => 'name',
);
$dictionary["bh_cases_log"]["fields"]["users_bh_cases_log_1users_ida"] = array (
  'name' => 'users_bh_cases_log_1users_ida',
  'type' => 'link',
  'relationship' => 'users_bh_cases_log_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_USERS_BH_CASES_LOG_1_FROM_BH_CASES_LOG_TITLE',
);
