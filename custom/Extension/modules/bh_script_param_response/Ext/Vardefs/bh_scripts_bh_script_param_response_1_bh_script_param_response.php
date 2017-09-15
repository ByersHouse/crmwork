<?php
// created: 2017-09-15 12:10:17
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
