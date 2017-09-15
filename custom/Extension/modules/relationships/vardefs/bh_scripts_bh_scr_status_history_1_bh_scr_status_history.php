<?php
// created: 2017-09-15 12:15:17
$dictionary["bh_scr_status_history"]["fields"]["bh_scripts_bh_scr_status_history_1"] = array (
  'name' => 'bh_scripts_bh_scr_status_history_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scr_status_history_1',
  'source' => 'non-db',
  'module' => 'bh_scripts',
  'bean_name' => 'bh_scripts',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCR_STATUS_HISTORY_1_FROM_BH_SCRIPTS_TITLE',
  'id_name' => 'bh_scripts_bh_scr_status_history_1bh_scripts_ida',
);
$dictionary["bh_scr_status_history"]["fields"]["bh_scripts_bh_scr_status_history_1_name"] = array (
  'name' => 'bh_scripts_bh_scr_status_history_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCR_STATUS_HISTORY_1_FROM_BH_SCRIPTS_TITLE',
  'save' => true,
  'id_name' => 'bh_scripts_bh_scr_status_history_1bh_scripts_ida',
  'link' => 'bh_scripts_bh_scr_status_history_1',
  'table' => 'bh_scripts',
  'module' => 'bh_scripts',
  'rname' => 'name',
);
$dictionary["bh_scr_status_history"]["fields"]["bh_scripts_bh_scr_status_history_1bh_scripts_ida"] = array (
  'name' => 'bh_scripts_bh_scr_status_history_1bh_scripts_ida',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scr_status_history_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCR_STATUS_HISTORY_1_FROM_BH_SCR_STATUS_HISTORY_TITLE',
);
