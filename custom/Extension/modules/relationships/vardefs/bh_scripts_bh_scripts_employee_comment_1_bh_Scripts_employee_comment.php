<?php
// created: 2017-09-15 11:59:08
$dictionary["bh_Scripts_employee_comment"]["fields"]["bh_scripts_bh_scripts_employee_comment_1"] = array (
  'name' => 'bh_scripts_bh_scripts_employee_comment_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scripts_employee_comment_1',
  'source' => 'non-db',
  'module' => 'bh_scripts',
  'bean_name' => 'bh_scripts',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_EMPLOYEE_COMMENT_1_FROM_BH_SCRIPTS_TITLE',
  'id_name' => 'bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida',
);
$dictionary["bh_Scripts_employee_comment"]["fields"]["bh_scripts_bh_scripts_employee_comment_1_name"] = array (
  'name' => 'bh_scripts_bh_scripts_employee_comment_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_EMPLOYEE_COMMENT_1_FROM_BH_SCRIPTS_TITLE',
  'save' => true,
  'id_name' => 'bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida',
  'link' => 'bh_scripts_bh_scripts_employee_comment_1',
  'table' => 'bh_scripts',
  'module' => 'bh_scripts',
  'rname' => 'name',
);
$dictionary["bh_Scripts_employee_comment"]["fields"]["bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida"] = array (
  'name' => 'bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scripts_employee_comment_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_EMPLOYEE_COMMENT_1_FROM_BH_SCRIPTS_EMPLOYEE_COMMENT_TITLE',
);
