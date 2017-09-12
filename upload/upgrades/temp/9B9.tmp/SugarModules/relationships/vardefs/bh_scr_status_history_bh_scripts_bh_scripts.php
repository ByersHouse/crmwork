<?php
// created: 2017-09-12 12:59:04
$dictionary["bh_scripts"]["fields"]["bh_scr_status_history_bh_scripts"] = array (
  'name' => 'bh_scr_status_history_bh_scripts',
  'type' => 'link',
  'relationship' => 'bh_scr_status_history_bh_scripts',
  'source' => 'non-db',
  'module' => 'bh_scr_status_history',
  'bean_name' => false,
  'vname' => 'LBL_BH_SCR_STATUS_HISTORY_BH_SCRIPTS_FROM_BH_SCR_STATUS_HISTORY_TITLE',
  'id_name' => 'bh_scr_status_history_bh_scriptsbh_scr_status_history_ida',
);
$dictionary["bh_scripts"]["fields"]["bh_scr_status_history_bh_scripts_name"] = array (
  'name' => 'bh_scr_status_history_bh_scripts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_SCR_STATUS_HISTORY_BH_SCRIPTS_FROM_BH_SCR_STATUS_HISTORY_TITLE',
  'save' => true,
  'id_name' => 'bh_scr_status_history_bh_scriptsbh_scr_status_history_ida',
  'link' => 'bh_scr_status_history_bh_scripts',
  'table' => 'bh_scr_status_history',
  'module' => 'bh_scr_status_history',
  'rname' => 'name',
);
$dictionary["bh_scripts"]["fields"]["bh_scr_status_history_bh_scriptsbh_scr_status_history_ida"] = array (
  'name' => 'bh_scr_status_history_bh_scriptsbh_scr_status_history_ida',
  'type' => 'link',
  'relationship' => 'bh_scr_status_history_bh_scripts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_SCR_STATUS_HISTORY_BH_SCRIPTS_FROM_BH_SCRIPTS_TITLE',
);
